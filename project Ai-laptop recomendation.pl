feature(macbook_air, high, student, long, high, medium).
feature(macbook_pro, high, design, long, medium, high).
feature(dell_xps_13, high, business, long, high, medium).
feature(dell_xps_15, high, design, medium, medium, high).
feature(lenovo_thinkpad_e14, medium, student, medium, medium, medium).
feature(hp_pavilion_15, low, basic, medium, medium, basic).
feature(asus_rog_strix, high, gaming, short, low, high).
feature(msi_gaming_gf63, medium, gaming, short, low, high).
feature(surface_laptop_5, high, business, long, high, medium).

% Student laptop
recommend_student_laptop(Laptop) :-
    feature(Laptop, _, student, _, _, _).

% Gaming laptop
recommend_gaming_laptop(Laptop) :-
    feature(Laptop, _, gaming, _, _, high).

% Business laptop
recommend_business_laptop(Laptop) :-
    feature(Laptop, _, business, long, high, _).

% Design laptop
recommend_design_laptop(Laptop) :-
    feature(Laptop, _, design, _, _, high).

% Basic laptop
recommend_basic_laptop(Laptop) :-
    feature(Laptop, low, basic, _, _, _).

% Long battery laptop
recommend_long_battery_laptop(Laptop) :-
    feature(Laptop, _, _, long, _, _).

% Portable laptop
recommend_portable_laptop(Laptop) :-
    feature(Laptop, _, _, _, high, _).

% High performance laptop
recommend_high_performance_laptop(Laptop) :-
    feature(Laptop, _, _, _, _, high).

% Low budget laptop
recommend_low_budget_laptop(Laptop) :-
    feature(Laptop, low, _, _, _, _).

% Medium budget laptop
recommend_medium_budget_laptop(Laptop) :-
    feature(Laptop, medium, _, _, _, _).

% High budget laptop
recommend_high_budget_laptop(Laptop) :-
    feature(Laptop, high, _, _, _, _).

% Gaming with high budget
recommend_premium_gaming_laptop(Laptop) :-
    feature(Laptop, high, gaming, _, _, high).

% Student with long battery
recommend_best_student_laptop(Laptop) :-
    feature(Laptop, _, student, long, high, _).

% Business with portability
recommend_business_travel_laptop(Laptop) :-
    feature(Laptop, _, business, long, high, _).

% Main recommendation rule
recommend_laptop(Laptop, Budget, Usage, Battery, Portability, Performance) :-
    feature(Laptop, Budget, Usage, Battery, Portability, Performance).