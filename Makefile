.PHONY: initialize patches compile run dist clean

renpy_path = ./renpy-7.4.11-sdk
archive_path = ./original/7KPP.app/Contents/Resources/autorun/game/archive.rpa

initialize:
	xattr -cr $(renpy_path)
	./scripts/rpatool -x -o extract/game $(archive_path)
	rm -rf project
	mkdir -p project
	cp -r extract/game project/game
	if [ -f patches/patch.diff ]; then patch -p2 -d project/game < patches/patch.diff; fi

patches:
	rm -rf patches
	mkdir -p patches
	diff -x '*.rpyc' -x '.DS_Store' -x 'saves' -x cache --speed-large-files -ruN extract/game project/game > patches/patch.diff || true

compile:
	$(renpy_path)/renpy.sh project compile

run:
	$(renpy_path)/renpy.sh project run

dist: compile
	rm -rf dist
	mkdir -p dist

	cp project/game/zz_fixscreens.rpy dist
	cp project/game/zz_fixscreens.rpyc dist
	cp project/game/zz_statnotify.rpy dist
	cp project/game/zz_statnotify.rpyc dist
	cp project/game/zz_quickchoice.rpy dist
	cp project/game/zz_quickchoice.rpyc dist

clean:
	rm -rf extract project dist
