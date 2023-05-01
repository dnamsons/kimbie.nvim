.DEFAULT_GOAL = check

kimbie_path = lua/kimbie
extra_path = $(kimbie_path)/extra

extra: $(extra_path)
	@lua $(extra_path)/init.lua

format:
	@for file in `find . -name '*.lua'`;do lua-format $$file -i; done;

lint: $(kimbie_path)
	@luacheck $(kimbie_path)

check: format lint
