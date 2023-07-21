# LifeOnChip : Convay's game of life on silicon

An ASIC engine for a 16x16 array of convay's game of life.

This is a hobby project done just to learn the basics of macro-based RTL to GDS flow using OpenLane2. 

---

### Convay's Game of Life

Convay's game of life is a cellular automaton that consists of a 2D grid of cells, each of which could be in two states, alive or dead. In each timestep, each cell is updated based on the values of its neighbouring cells.

The states of the nearest 8 cells and the current state of a cell is used to determine the next state of the cell.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/CA-Moore.svg/300px-CA-Moore.svg.png)

The number of live cells in the neighbourhood of a cell is used to decide its next state

| Number of live cells nearby | Next state |
|---    |---    |
| < 2   | Dead (underpopulation) |
| 2     | Old state |
| 3     | Alive (reproduction) |
| > 3   | Dead (overpopulation) |

Typically, the game of life is simulated on a computer where these rules are coded. However, these rules themself form a 

The project aims to simulate an array of convay's game of life on an ASIC using the Skywater130 process.

Play it here : [playgameoflife.com](https://playgameoflife.com/)

Learn about different structures and techniques in game of life here : [convaylife.com]([https](https://conwaylife.com/))

---

## Architecture
