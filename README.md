# Laptop Recommendation Expert System

A Prolog-based expert system that recommends a suitable laptop category to a user based on five key factors: budget, usage, battery life, portability, and performance.

> AI201 – Fundamentals of Artificial Intelligence
> Department of Artificial Intelligence & Data Science, Taibah University
> Supervised by: Dr. Hanadi Aldosari

## Team
- Manar Murdhi Aldosari
- Fay Nasser Aljohani
- Wedyan Mohammed Ghazi
- Amal Eid Aljohani
- Wejdan Saleh Aljohani 

## Project Overview

Choosing a laptop can be confusing given the many available types, prices, and specifications. This project builds a simple **expert system** — an AI system that mimics human expert reasoning using stored knowledge and logical rules — to help users pick a laptop category that fits their needs, instead of comparing specs manually.

The system asks about five attributes and matches them against a knowledge base of laptop facts to generate a recommendation:

| Attribute | Possible Values |
|---|---|
| Budget | low, medium, high |
| Usage | basic, student, gaming, business, design |
| Battery | short, medium, long |
| Portability | low, medium, high |
| Performance | basic, medium, high |

## Why Prolog

Prolog is a logic programming language built around facts, rules, and queries — a natural fit for expert systems. Laptop models are stored as facts, recommendation logic is written as rules, and the user's preferences become a query that Prolog resolves by searching the knowledge base.

## What's in this repo

| File | Description |
|---|---|
| `project Ai-laptop recomendation.pl` | Prolog knowledge base and rules (facts + recommendation logic) |
| `AI201 - Project.pdf` | Full project report (introduction, knowledge base, rules, search trees, sample outputs) |

## How It Works

**Facts** describe each laptop's features using a `feature/6` predicate:
```prolog
feature(macbook_air, high, student, long, high, medium).
```
This means the MacBook Air is high-budget, suited for students, with long battery life, high portability, and medium performance.

**Rules** match user requirements to suitable laptops:
```prolog
recommend_student_laptop(Laptop) :-
    feature(Laptop, _, student, _, _, _).
```

The knowledge base includes 9 laptop models (MacBook Air/Pro, Dell XPS 13/15, Lenovo ThinkPad E14, HP Pavilion 15, Asus ROG Strix, MSI Gaming GF63, Surface Laptop 5) and rules covering use-case categories (student, gaming, business, design, basic), battery/portability/performance tiers, and budget levels.

## How to Run

1. Install [SWI-Prolog](https://www.swi-prolog.org/download/stable) (or any Prolog interpreter).
2. Load the knowledge base:
   ```bash
   swipl "project Ai-laptop recomendation.pl"
   ```
3. Run a query, for example:
   ```prolog
   ?- recommend_student_laptop(X).
   ?- recommend_gaming_laptop(X).
   ?- recommend_laptop(X, high, business, long, high, medium).
   ```

## Project Scope

The system recommends laptops based only on the five attributes above, using the facts and rules in the knowledge base. It does not check real-time prices or availability from online stores — the focus is on demonstrating how expert systems reason using logic in Prolog.

## Tools Used

`Prolog` (SWI-Prolog)
