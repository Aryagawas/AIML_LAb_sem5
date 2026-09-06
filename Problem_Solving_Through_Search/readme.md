# AI Problem Solving Through Search

## Introduction

This practical implements different search techniques used in Artificial Intelligence using Python.

## Algorithms Implemented

| Category          | Algorithm                | Application            |
| ----------------- | ------------------------ | ---------------------- |
| Uninformed Search | BFS                      | Graph traversal        |
| Uninformed Search | DFS                      | Graph traversal        |
| Informed Search   | A* Search                | Path finding           |
| Informed Search   | Greedy Best First Search | Heuristic-based search |
| Local Search      | Hill Climbing            | Optimization           |
| CSP               | Backtracking             | Sudoku solving         |

## Concepts

### BFS

BFS explores nodes level by level using a queue. It can find the shortest path in an unweighted graph.

### DFS

DFS explores a path deeply before moving to another path. It uses a stack and does not guarantee the shortest path.

### A* Search

A* uses path cost and heuristic value:

```text
f(n) = g(n) + h(n)
```

It uses a priority queue to select the next node.

### Greedy Best First Search

Greedy Best First Search selects nodes using their heuristic value:

```text
f(n) = h(n)
```

It does not guarantee an optimal path.

### Hill Climbing

Hill Climbing is used for optimization. It moves to a neighboring state when it provides a better value.

### Sudoku using Backtracking

Sudoku is treated as a Constraint Satisfaction Problem. Backtracking assigns values while checking row, column and 3 × 3 sub-grid constraints.

## Project Structure

```text
Problem_Solving_Through_search/
|
|-- BFS.py
|-- CSP_SUDOKU.py
|-- DFS.py
|-- heuristic_search_Astar.py
|-- heuristic_search_greedy_best_search.py
|-- local_search_hill_climbing.py
```

## Requirements

Python 3.x

No external libraries are required.

## How to Run

Open the project folder and run the required file:

```bash
python BFS.py
python CSP_SUDOKU.py
python DFS.py
python heuristic_search_Astar.py
python heuristic_search_greedy_best_search.py
python local_search_hill_climbing.py
```

## Conclusion

This practical demonstrates different search techniques and their applications. The choice of algorithm depends on the problem, search space, heuristic information and required solution.

## Technologies Used

Python 3
Artificial Intelligence
Search Algorithms
Heuristic Search
Local Search
Constraint Satisfaction
Backtracking

