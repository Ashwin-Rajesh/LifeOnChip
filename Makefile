macros:

.PHONY: bake
bake:out

.PHONY: clean
clean:
	rm -r runs

.PHONY: view
view: out
	klayout out/klayout_gds/game_of_life.klayout.gds

.PHONY: view_openroad
view_openroad: runs/run
	python3 -m openlane --dockerized config_view.json --last-run

out: runs/run/final
	mv runs/run/final ./out

runs/run/final: src/game_of_life_gen.v constraints/*.cfg macros/life_cell/out
	rm -rf runs/run
	python3 -m openlane --dockerized config.json --run-tag run;

constraints/macro_placement.cfg: scripts/gen_placement.py
	python3 scripts/gen_placement.py 16 16 > constraints/macro_placement.cfg

src/game_of_life_gen.v: scripts/gen_arr.py
	python3 scripts/gen_arr.py 16 16 > src/game_of_life_gen.v

macros/life_cell/out:
	make -C macros/life_cell out

