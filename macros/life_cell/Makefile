.PHONY: bake
bake:out

out:runs/run/final
	cp -r runs/run/final/* ./out

runs/run/final: life_cell.v life_cell_io.cfg config.json
	rm -rf runs/run
	python3 -m openlane --dockerized config.json --run-tag run;

.PHONY: clean
clean:
	rm -r runs

.PHONY: view
view:
	klayout out/klayout_gds/life_cell.klayout.gds
