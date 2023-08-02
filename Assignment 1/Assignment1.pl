:-dynamic(prerequisites/5).
start :-
    program(mtech),
    newcourse(add),
    write('Would you like to continue yes/no'),nl,
    read(Bool),
    check(Bool).

check(yes):- start.
check(no):-!.   

prerequisites(biophysics,cb,scientist,biostatistics,biostatistics).
prerequisites(biophysics,cb,scientist,biostatistics,computer_aided_drug_design).
prerequisites(computational_neuroscience,cb,scientist,biostatistics,network_biology).
prerequisites(biophysics,cb,scientist,biostatistics,computational_neuroscience).
prerequisites(biostatistics,cb,scientist,biostatistics,computer_aided_drug_design).
prerequisites(biostatistics,cb,scientist,biostatistics,bioinformatics).
prerequisites(biostatistics,cb,scientist,biostatistics,mathematical_biology).
prerequisites(biostatistics,cb,scientist,biostatistics,probability_and_statistics).

%scientist computational proteomics
prerequisites(biophysics,cb,scientist,computational_proteomics,biostatistics).
prerequisites(biophysics,cb,scientist,computational_proteomics,computer_aided_drug_design).
prerequisites(computational_neuroscience,cb,scientist,computational_proteomics,network_biology).
prerequisites(biophysics,cb,scientist,computational_proteomics,computational_neuroscience).
prerequisites(biostatistics,cb,scientist,computational_proteomics,computer_aided_drug_design).
prerequisites(biostatistics,cb,scientist,computational_proteomics,bioinformatics).
prerequisites(biostatistics,cb,scientist,computational_proteomics,chemoinformatics).
prerequisites(biostatistics,cb,scientist,computational_proteomics,computational_metagenomics).

prerequisites(digital_circuits,ece,vlsi_engineer,front_end,computer_architecture).
prerequisites(digital_circuits,ece,vlsi_engineer,front_end,integrated_electronics).
prerequisites(digital_circuits,ece,vlsi_engineer,front_end,signals_and_systems).
prerequisites(digital_circuits,ece,vlsi_engineer,front_end,natural_embedded_logic_design).
prerequisites(computer_architecture,ece,vlsi_engineer,front_end,integrate_electronics).
prerequisites(embedded_logic_design,ece,vlsi_engineer,front_end,vlsi_design_flow).

prerequisites(digital_circuits,ece,vlsi_engineer,back_end,radar_systems).
prerequisites(digital_circuits,ece,vlsi_engineer,back_end,integrated_electronics).
prerequisites(digital_circuits,ece,vlsi_engineer,back_end,signals_and_systems).
prerequisites(digital_circuits,ece,vlsi_engineer,back_end,natural_embedded_logic_design).
prerequisites(computer_architecture,ece,vlsi_engineer,back_end,integrate_electronics).
prerequisites(embedded_logic_design,ece,vlsi_engineer,back_end,digital_hardware_design).

%Scientist vlsi
prerequisites(digital_circuits,ece,scientist,vlsi,computer_architecture).
prerequisites(digital_circuits,ece,scientist,vlsi,integrated_electronics).
prerequisites(digital_circuits,ece,scientist,vlsi,signals_and_systems).
prerequisites(digital_circuits,ece,scientist,vlsi,natural_embedded_logic_design).
prerequisites(computer_architecture,ece,scientist,vlsi,integrate_electronics).
prerequisites(embedded_logic_design,ece,scientist,vlsi,vlsi_design_flow).

%scientist systems
prerequisites(operating_system,ece,scientist,systems,advanced_operating_system).
prerequisites(compilers,ece,scientist,systems,advanced_compiler).
prerequisites(parallel_runtime_modern_processors,ece,scientist,systems,GPU_computing).
prerequisites(operating_system,ece,scientist,systems,compiler).
prerequisites(compilers,ece,scientist,systems,operating_system).
prerequisites(operating_system,ece,scientist,systems,parallel_runtime_modern_processors).
prerequisites(compilers,ece,scientist,systems,parallel_runtime_modern_processors).
prerequisites(operating_system,ece,scientist,systems,computer_networks).
prerequisites(compilers,ece,scientist,systems,computer_networks).
prerequisites(computer_networks,ece,scientist,systems,parallel_runtime_modern_processors).

prerequisites(basic_programming,cse,software_engineer,front_end,advanced_programming).
prerequisites(basic_programming,cse,software_engineer,front_end,software_engineering).
prerequisites(basic_programming,cse,software_engineer,front_end,algorithms).
prerequisites(algorithms,cse,software_engineer,front_end,software_engineering).
prerequisites(algorithms,cse,software_engineer,front_end,advanced_programming).
prerequisites(software_engineering,cse,software_engineer,front_end,web_design).

prerequisites(basic_programming,cse,software_engineer,back_end,advanced_programming).
prerequisites(basic_programming,cse,software_engineer,back_end,software_engineering).
prerequisites(basic_programming,cse,software_engineer,back_end,algorithms).
prerequisites(algorithms,cse,software_engineer,back_end,software_engineering).
prerequisites(algorithms,cse,software_engineer,back_end,advanced_programming).
prerequisites(software_engineering,cse,software_engineer,back_end,web_design).

prerequisites(linear_algebra,cse,machine_learning_engineer,computer_vision,machine_learning).
prerequisites(linear_algebra,cse,machine_learning_engineer,computer_vision,computer_vision).
prerequisites(machine_learning,cse,machine_learning_engineer,computer_vision,advanced_machine_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,computer_vision,deep_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,computer_vision,statistical_machine_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,computer_vision,bayesian_machine_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,computer_vision,data_mining).
prerequisites(machine_learning,cse,machine_learning_engineer,computer_vision,data_processing).
prerequisites(computer_vision,cse,scientist,computer_vision,advanced_computer_vision).
prerequisites(data_mining,cse,scientist,computer_vision,big_data_mining).

prerequisites(linear_algebra,cse,machine_learning_engineer,natural_language_processing,machine_learning).
prerequisites(linear_algebra,cse,machine_learning_engineer,natural_language_processing,natural_language_processing).
prerequisites(machine_learning,cse,machine_learning_engineer,natural_language_processing,advanced_machine_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,natural_language_processingdeep_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,natural_language_processing,statistical_machine_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,natural_language_processing,bayesian_machine_learning).
prerequisites(machine_learning,cse,machine_learning_engineer,natural_language_processing,data_mining).
prerequisites(machine_learning,cse,machine_learning_engineer,natural_language_processing,data_processing).
prerequisites(data_mining,cse,scientist,natural_language_processing,big_data_mining).

prerequisites(basic_programming,cse,test_engineer,manual_testing,advanced_programming).
prerequisites(basic_programming,cse,test_engineer,manual_testing,software_engineering).
prerequisites(basic_programming,cse,test_engineer,manual_testing,algorithms).
prerequisites(algorithms,cse,test_engineer,manual_testing,software_engineering).
prerequisites(algorithms,cse,test_engineer,manual_testing,advanced_programming).
prerequisites(algorithms,cse,test_engineer,manual_testing,software_testing).
prerequisites(software_engineering,cse,test_engineer,manual_testing,software_testing).

prerequisites(basic_programming,cse,test_engineer,automation_testing,advanced_programming).
prerequisites(basic_programming,cse,test_engineer,automation_testing,software_engineering).
prerequisites(basic_programming,cse,test_engineer,automation_testing,algorithms).
prerequisites(algorithms,cse,test_engineer,automation_testing,software_engineering).
prerequisites(algorithms,cse,test_engineer,automation_testing,advanced_programming).
prerequisites(algorithms,cse,test_engineer,automation_testing,software_testing).
prerequisites(software_engineering,cse,test_engineer,automation_testing,software_testing).

prerequisites(linear_algebra,cse,scientist,machine_learning,machine_learning).
prerequisites(linear_algebra,cse,scientist,machine_learning,convex_optimization).
prerequisites(linear_algebra,cse,scientist,machine_learning,computer_vision).
prerequisites(linear_algebra,cse,scientist,machine_learning,natural_language_processing).
prerequisites(machine_learning,cse,scientist,machine_learning,advanced_machine_learning).
prerequisites(machine_learning,cse,scientist,machine_learning,deep_learning).
prerequisites(machine_learning,cse,scientist,machine_learning,statistical_machine_learning).
prerequisites(machine_learning,cse,scientist,machine_learning,bayesian_machine_learning).
prerequisites(deep_learning,cse,scientist,machine_learning,theories_of_deep_learning).
prerequisites(convex_optimization,cse,scientist,machine_learning,linear_optimization).
prerequisites(computer_vision,cse,scientist,machine_learning,advanced_computer_vision).

prerequisites(operating_system,cse,scientist,systems,advanced_operating_system).
prerequisites(compilers,cse,scientist,systems,advanced_compiler).
prerequisites(parallel_runtime_modern_processors,cse,scientist,systems,GPU_computing).
prerequisites(operating_system,cse,scientist,systems,compiler).
prerequisites(compilers,cse,scientist,systems,operating_system).
prerequisites(operating_system,cse,scientist,systems,parallel_runtime_modern_processors).
prerequisites(compilers,cse,scientist,systems,parallel_runtime_modern_processors).

prerequisites(algorithms,cse,scientist,theory,graduate_algorithms).
prerequisites(algorithms,cse,scientist,theory,modern_algorithm_design).
prerequisites(algorithms,cse,scientist,theory,quantum_algorithms).
prerequisites(graduate_algorithms,cse,scientist,theory,modern_algorithm_design).
prerequisites(graduate_algorithms,cse,scientist,theory,modern_algorithm_design).
prerequisites(modern_algorithm_design,cse,scientist,theory,quantum_algorithms).

interest(biostatistics,cb,scientist) :-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,biostatistics,cb,scientist).

interest(computational_proteomics,cb,scientist) :-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,computational_proteomics,cb,scientist). 

interest(front_end,ece,vlsi_engineer) :-
    verify(yes,front_end,ece,vlsi_engineer).

interest(back_end,ece,vlsi_engineer) :-
    verify(yes,back_end,ece,vlsi_engineer).    

interest(vlsi,ece,scientist) :-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,vlsi,ece,scientist).

interest(systems,ece,scientist) :-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,systems,ece,scientist).

interest(front_end,cse,software_engineer) :-
    verify(yes,front_end,cse,software_engineer).

interest(back_end,cse,software_engineer) :-
    verify(yes,front_end,cse,software_engineer).

interest(computer_vision,cse,machine_learning_engineer) :-
    write('Have you ever worked on a project yes/no'),
    read(Choice),
    verify(Choice,computer_vision,cse,machine_learning_engineer).

interest(natural_language_processing,cse,machine_learning_engineer) :-
    write('Have you ever worked on a project yes/no'),
    read(Choice),
    verify(Choice,natural_language_processing,cse,machine_learning_engineer).

interest(manual_testing,cse,test_engineer) :-
    verify(yes,manual_testing,cse,test_engineer).

interest(automation_testing,cse,test_engineer) :-
    verify(yes,manual_testing,cse,test_engineer).

interest(machine_learning,cse,scientist):-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,machine_learning,cse,scientist).

interest(systems,cse,scientist) :-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,systems,cse,scientist).

interest(theory,cse,scientist) :-
    write('Have you ever worked on a research project yes/no'),
    read(Choice),
    verify(Choice,theory,cse,scientist).   
  
verify(yes,biostatistics,cb,scientist):-
    CourseList=[],
    domain(biostatistics,CourseList,cb,scientist),!.

verify(yes,computational_proteomics,cb,scientist):-
    CourseList=[],
    domain(computational_proteomics,CourseList,cb,scientist),!.

verify(no,biostatistics,cb,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project in biostatistics or biophysics'),nl,
    domain(biostatistics,CourseList,cb,scientist),!.

verify(no,computational_proteomics,cb,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project in computational_proteomics or biophysics'),nl,
    domain(computational_proteomics,CourseList,cb,scientist),!.    

verify(yes,front_end,ece,vlsi_engineer):-
    CourseList=[],
    domain(front_end,CourseList,ece,vlsi_engineer),!.

verify(yes,back_end,ece,vlsi_engineer):-
    CourseList=[],
    domain(back_end,CourseList,ece,vlsi_engineer),!.      

verify(yes,vlsi,ece,scientist):-
    CourseList=[],
    domain(vlsi,CourseList,ece,scientist),!.

verify(yes,systems,ece,scientist):-
    CourseList=[],
    domain(systems,CourseList,ece,scientist),!.

verify(no,vlsi,ece,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project in VLSI Design or embedded system'),nl,
    domain(vlsi,CourseList,ece,scientist),!.

verify(no,systems,ece,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project in GPU computing or operating systems'),nl,
    domain(systems,CourseList,ece,scientist),!.

verify(yes,front_end,cse,software_engineer):-
    CourseList=[],
    domain(front_end,CourseList,cse,software_engineer),!.

verify(yes,back_end,cse,software_engineer):-
    CourseList=[],
    domain(front_end,CourseList,cse,software_engineer),!. 

verify(yes,computer_vision,cse,machine_learning_engineer):-
    CourseList=[],
    domain(computer_vision,CourseList,cse,machine_learning_engineer),!.

verify(yes,natural_language_processing,cse,machine_learning_engineer):-
    CourseList=[],
    domain(natural_language_processing,CourseList,cse,machine_learning_engineer),!.          

verify(no,computer_vision,cse,machine_learning_engineer):-
    CourseList=[],
    write('Please do an MTech Thesis project in Machine Learning or deep learning in computer vision'),nl,
    domain(computer_vision,CourseList,cse,machine_learning_engineer),!.

verify(no,natural_language_processing,cse,machine_learning_engineer):-
    CourseList=[],
    write('Please do an MTech Thesis project in Machine Learning or deep learning in natural language processing'),nl,
    domain(natural_language_processing,CourseList,cse,machine_learning_engineer),!.  

verify(yes,manual_testing,cse,test_engineer):-
    CourseList=[],
    domain(manual_testing,CourseList,cse,test_engineer),!.

verify(yes,automation_testing,cse,test_engineer):-
    CourseList=[],
    domain(manual_testing,CourseList,cse,test_engineer),!.    

verify(yes,machine_learning,cse,scientist):-
    CourseList=[],
    domain(machine_learning,CourseList,cse,scientist),!.

verify(yes,systems,cse,scientist):-
    CourseList=[],
    domain(systems,CourseList,cse,scientist),!.

verify(yes,theory,cse,scientist):-
    CourseList=[],
    domain(theory,CourseList,cse,scientist),!.  

verify(no,machine_learning,cse,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project in Machine Learning or deep learning'),nl,
    domain(machine_learning,CourseList,cse,scientist),!.

verify(no,systems,cse,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project in GPU computing or operating systems'),nl,
    domain(systems,CourseList,cse,scientist),!.

verify(no,theory,cse,scientist):-
    CourseList=[],
    write('Please do an MTech Thesis project on Algorithms or Theory of computation'),nl,
    domain(theory,CourseList,cse,scientist),!.  

domain(biostatistics,CourseList,cb,scientist) :-
    write('Enter the courses you have taken from the list, enter done to stop'),nl,
    write('biophysics'),nl,
    write('biostatistics'),nl,
    write('computational_neuroscience'),nl,
    write('linear_algebra'),nl,
    write('probability'),nl,
    read(Course),
    know(Course,CourseList,cb,scientist,biostatistics).

domain(computational_proteomics,CourseList,cb,scientist) :-
    write('Enter the courses you have taken from the list, enter done to stop'),nl,
    write('biophysics'),nl,
    write('biostatistics'),nl,
    write('computational_neuroscience'),nl,
    write('computational_gastronomy'),nl,
    read(Course),
    know(Course,CourseList,cb,scientist,computational_proteomics).

domain(front_end,CourseList,ece,vlsi_engineer) :-
    write('Enter the courses you have taken from the options below, enter done to stop'),nl,
    write('digital circuits'),nl,
    write('computer architecture'),nl,
    write('embedded logic design'),nl,
    write('digital_logic'),nl,
    read(Course),
    know(Course,CourseList,ece,vlsi_engineer,front_end).

domain(back_end,CourseList,ece,vlsi_engineer) :-
    write('Enter the courses you have taken from the options below, enter done to stop'),nl,
    write('digital circuits'),nl,
    write('computer architecture'),nl,
    write('embedded logic design'),nl,
    write('digital logic'),nl,
    read(Course),
    know(Course,CourseList,ece,vlsi_engineer,back_end).    

domain(vlsi,CourseList,ece,scientist) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('digital circuits'),nl,
    write('computer architecture'),nl,
    write('embedded logic design'),nl,
    write('digital logic'),nl,
    read(Course),
    know(Course,CourseList,ece,scientist,vlsi).

domain(systems,CourseList,ece,scientist) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('Operating systems'),nl,
    write('compiler'),nl,
    write('computer networks'),nl,
    write('distributed systems'),nl,
    read(Course),
    know(Course,CourseList,ece,scientist,systems).    

domain(front_end,CourseList,cse,software_engineer) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('basic programming'),nl,
    write('algorithms'),nl,
    write('software engineering'),nl,
    read(Course),
    know(Course,CourseList,cse,software_engineer,front_end).

domain(back_end,CourseList,cse,software_engineer) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('basic programming'),nl,
    write('algorithms'),nl,
    write('software engineering'),nl,
    read(Course),
    know(Course,CourseList,cse,software_engineer,back_end).
     
domain(computer_vision,CourseList,cse,machine_learning_engineer) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('linear algebra'),nl,
    write('computer vision'),nl,
    write('machine learning'),nl,
    read(Course),
    know(Course,CourseList,cse,machine_learning_engineer,computer_vision).

domain(natural_language_processing,CourseList,cse,machine_learning_engineer) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('linear algebra'),nl,
    write('natural language processing'),nl,
    write('machine learning'),nl,
    read(Course),
    know(Course,CourseList,cse,machine_learning_engineer,natural_language_processing).

domain(manual_testing,CourseList,cse,test_engineer) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('basic programming'),nl,
    write('algorithms'),nl,
    write('software engineering'),nl,
    read(Course),
    know(Course,CourseList,cse,test_engineer,manual_testing).

domain(automation_testing,CourseList,cse,test_engineer) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('basic programming'),nl,
    write('algorithms'),nl,
    write('software engineering'),nl,
    read(Course),
    know(Course,CourseList,cse,test_engineer,automation_testing).

domain(machine_learning,CourseList,cse,scientist) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('linear algebra'),nl,
    write('machine Learning'),nl,
    write('deep Learning'),nl,
    write('convex optimization'),nl,
    read(Course),
    know(Course,CourseList,cse,scientist,machine_learning).

domain(systems,CourseList,cse,scientist) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('Operating systems'),nl,
    write('compiler'),nl,
    write('computer networks'),nl,
    write('distributed systems'),nl,
    read(Course),
    know(Course,CourseList,cse,scientist,systems).

domain(theory,CourseList,cse,scientist) :-
    write('Enter the courses you have taken, enter done to stop'),nl,
    write('algorithms'),nl,
    write('modern-algorithm_design'),nl,
    read(Course),
    know(Course,CourseList,cse,scientist,theory).

know(done,CourseList,cb,scientist,biostatistics):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cb,scientist,biostatistics),!.
know(Course,CourseList,cb,scientist,biostatistics) :-
    list_insert(Course,CourseList,NewList),domain(biostatistics,NewList,cb,scientist).


know(done,CourseList,cb,scientist,computational_proteomics):- write('The course list you have chosen as follows'),
                                                nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,
                                                suggest(CourseList,cb,scientist,computational_proteomics),!.
know(Course,CourseList,cb,scientist,computational_proteomics) :-
    list_insert(Course,CourseList,NewList),domain(computational_proteomics,NewList,cb,scientist).

know(done,CourseList,ece,vlsi_engineer,front_end):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,ece,vlsi_engineer,front_end),!.
know(Course,CourseList,ece,vlsi_engineer,front_end) :-
    list_insert(Course,CourseList,NewList),domain(front_end,NewList,ece,vlsi_engineer).    

know(done,CourseList,ece,vlsi_engineer,back_end):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,ece,vlsi_engineer,back_end),!.
know(Course,CourseList,ece,vlsi_engineer,back_end) :-
    list_insert(Course,CourseList,NewList),domain(back_end,NewList,ece,vlsi_engineer).   


know(done,CourseList,ece,scientist,vlsi):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,ece,scientist,vlsi),!.
know(Course,CourseList,ece,scientist,vlsi) :-
    list_insert(Course,CourseList,NewList),domain(vlsi,NewList,ece,scientist).


know(done,CourseList,ece,scientist,systems):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,ece,scientist,systems),!.
know(Course,CourseList,ece,scientist,systems) :-
    list_insert(Course,CourseList,NewList),domain(systems,NewList,ece,scientist).


know(done,CourseList,cse,software_engineer,front_end):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,software_engineer,front_end),!.
know(Course,CourseList,cse,software_engineer,front_end) :-
    list_insert(Course,CourseList,NewList),domain(front_end,NewList,cse,software_engineer).

know(done,CourseList,cse,software_engineer,back_end):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,software_engineer,back_end),!.
know(Course,CourseList,cse,software_engineer,back_end) :-
    list_insert(Course,CourseList,NewList),domain(back_end,NewList,cse,software_engineer).

know(done,CourseList,cse,machine_learning_engineer,computer_vision):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,machine_learning_engineer,computer_vision),!.
know(Course,CourseList,cse,machine_learning_engineer,computer_vision) :-
    list_insert(Course,CourseList,NewList),domain(computer_vision,NewList,cse,machine_learning_engineer).

know(done,CourseList,cse,machine_learning_engineer,natural_language_processing):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,machine_learning_engineer,natural_language_processing),!.
know(Course,CourseList,cse,machine_learning_engineer,natural_language_processing) :-
    list_insert(Course,CourseList,NewList),domain(natural_language_processing,NewList,cse,machine_learning_engineer).    

know(done,CourseList,cse,test_engineer,manual_testing):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,test_engineer,manual_testing),!.
know(Course,CourseList,cse,test_engineer,manual_testing) :-
    list_insert(Course,CourseList,NewList),domain(manual_testing,NewList,cse,test_engineer).

know(done,CourseList,cse,test_engineer,automation_testing):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,test_engineer,automation_testing),!.
know(Course,CourseList,cse,test_engineer,automation_testing) :-
    list_insert(Course,CourseList,NewList),domain(automation_testing,NewList,cse,test_engineer).
 
know(done,CourseList,cse,scientist,machine_learning):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,scientist,machine_learning),!.
know(Course,CourseList,cse,scientist,machine_learning) :-
    list_insert(Course,CourseList,NewList),domain(machine_learning,NewList,cse,scientist).

know(done,CourseList,cse,scientist,systems):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,scientist,systems),!.
know(Course,CourseList,cse,scientist,systems) :-
    list_insert(Course,CourseList,NewList),domain(systems,NewList,cse,scientist).

know(done,CourseList,cse,scientist,theory):- write('The course list you have chosen as follows'),nl,print_list(CourseList),nl,write('The suggestion of courses for you to take is'),nl,suggest(CourseList,cse,scientist,theory),!.
know(Course,CourseList,cse,scientist,theory) :-
    list_insert(Course,CourseList,NewList),domain(theory,NewList,cse,scientist).    

suggest([],cb,scientist,biostatistics).
suggest(CourseList,cb,scientist,biostatistics) :- find(H,cb,scientist,biostatistics), suggest(T,cb,scientist,biostatistics).

suggest([],cb,scientist,computational_proteomics).
suggest(CourseList,cb,scientist,computational_proteomics) :- find(H,cb,scientist,computational_proteomics), suggest(T,cb,scientist,computational_proteomics).

suggest([],ece,vlsi_engineer,front_end).
suggest(CourseList,ece,vlsi_engineer,front_end) :- find(H,ece,vlsi_engineer,front_end), suggest(T,ece,vlsi_engineer,front_end).  

suggest([],ece,vlsi_engineer,back_end).
suggest(CourseList,ece,vlsi_engineer,back_end) :- find(H,ece,vlsi_engineer,back_end), suggest(T,ece,vlsi_engineer,back_end). 

suggest([],ece,scientist,vlsi).
suggest(CourseList,ece,scientist,vlsi) :- find(H,ece,scientist,vlsi), suggest(T,ece,scientist,vlsi).

suggest([],ece,scientist,systems).
suggest(CourseList,ece,scientist,systems) :- find(H,ece,scientist,systems), suggest(T,ece,scientist,systems).

suggest([],cse,software_engineer,front_end).
suggest(CourseList,cse,software_engineer,front_end) :- find(H,cse,software_engineer,front_end), suggest(T,cse,software_engineer,front_end).  

suggest([],cse,software_engineer,back_end).
suggest(CourseList,cse,software_engineer,back_end) :- find(H,cse,software_engineer,back_end), suggest(T,cse,software_engineer,back_end).

suggest([],cse,machine_learning_engineer,computer_vision).
suggest(CourseList,cse,machine_learning_engineer,computer_vision) :- find(H,cse,machine_learning_engineer,computer_vision), suggest(T,cse,machine_learning_engineer,computer_vision).  

suggest([],cse,machine_learning_engineer,natural_language_processing).
suggest(CourseList,cse,machine_learning_engineer,natural_language_processing) :- find(H,cse,machine_learning_engineer,natural_language_processing), suggest(T,cse,machine_learning_engineer,natural_language_processing).  

suggest([],cse,test_engineer,manual_testing).
suggest(CourseList,cse,test_engineer,manual_testing) :- find(H,cse,test_engineer,manual_testing), suggest(T,cse,test_engineer,manual_testing).  

suggest([],cse,test_engineer,automation_testing).
suggest(CourseList,cse,test_engineer,automation_testing) :- find(H,cse,test_engineer,automation_testing), suggest(T,cse,test_engineer,automation_testing).  


suggest([],cse,scientist,machine_learning).
suggest(CourseList,cse,scientist,machine_learning) :- find(H,cse,scientist,machine_learning), suggest(T,cse,scientist,machine_learning).

suggest([],cse,scientist,systems).
suggest(CourseList,cse,scientist,systems) :- find(H,cse,scientist,systems), suggest(T,cse,scientist,systems).

suggest([],cse,scientist,theory).
suggest(CourseList,cse,scientist,theory) :- find(H,cse,scientist,theory), suggest(T,cse,scientist,theory).

find(H,cb,scientist,biostatistics):- findall(X,prerequisites(H,cb,scientist,biostatistics,X),AI),sort(AI, X),print_list(X).
find(H,cb,scientist,computational_proteomics):- findall(X,prerequisites(H,cb,scientist,computational_proteomics,X),AI),sort(AI, X),print_list(X).

find(H,ece,vlsi_engineer,front_end):- findall(X,prerequisites(H,ece,vlsi_engineer,front_end,X),AI),sort(AI, X),print_list(X).
find(H,ece,vlsi_engineer,back_end):- findall(X,prerequisites(H,ece,vlsi_engineer,back_end,X),AI),sort(AI, X),print_list(X).

find(H,ece,scientist,vlsi):- findall(X,prerequisites(H,ece,scientist,vlsi,X),AI),sort(AI, X),print_list(X).
find(H,ece,scientist,systems):- findall(X,prerequisites(H,ece,scientist,systems,X),AI),sort(AI, X),print_list(X).

find(H,cse,software_engineer,front_end):-findall(X,prerequisites(H,cse,software_engineer,front_end,X),AI),sort(AI, X),print_list(X).
find(H,cse,software_engineer,back_end):- findall(X,prerequisites(H,cse,software_engineer,back_end,X),AI),sort(AI, X),print_list(X).

find(H,cse,machine_learning_engineer,computer_vision):- findall(X,prerequisites(H,cse,machine_learning_engineer,computer_vision,X),AI),sort(AI, X),print_list(X).
find(H,cse,machine_learning_engineer,natural_language_processing):- findall(X,prerequisites(H,cse,machine_learning_engineer,natural_language_processing,X),AI),sort(AI, X),print_list(X).

find(H,cse,test_engineer,manual_testing):-findall(X,prerequisites(H,cse,test_engineer,manual_testing,X),AI),sort(AI, X),print_list(X).
find(H,cse,test_engineer,automation_testing):- findall(X,prerequisites(H,cse,test_engineer,automation_testing,X),AI),sort(AI, X),print_list(X).

find(H,cse,scientist,machine_learning):-findall(X,prerequisites(H,cse,scientist,machine_learning,X),AI),sort(AI, X),print_list(X).
find(H,cse,scientist,systems):- findall(X,prerequisites(H,cse,scientist,systems,X),AI),sort(AI, X),print_list(X).
find(H,cse,scientist,theory):- findall(X,prerequisites(H,cse,scientist,theory,X),AI),sort(AI, X),print_list(X).

newcourse(add) :-
         write('Enter any course you want to add or delete or press no'),nl,
         read(Value),
         go(Value).

go(no):-!.
go(add) :-         
         write('Enter any new course you want to provide or want to remove some existing course'),
         read(NewCourse),
         write('Enter the specialization '),
         read(Specialization),
         write('Enter the Interest'),
         read(Interest),
         write('Enter the future Opportunities for this course'),
         read(Career),
         write('Enter the prerequisties for the course'),
         read(Pre),
         assertz(prerequisites(Pre,Specialization,Career,Interest,NewCourse)).

go(delete):-
         write('Enter any new course you want to remove some existing course'),
         read(NewCourse),
         write('Enter the specialization '),
         read(Specialization),
         write('Enter the Interest'),
         read(Interest),
         write('Enter the future Opportunities for this course'),
         read(Career),
         write('Enter the prerequisties for the course'),
         read(Pre),
         retract(prerequisites(Pre,Specialization,Career,Interest,NewCourse)).
            

program(mtech) :-
    write('Enter the specialization you have chosen: CSE, CB, ECE '),
    read(Honours),
    honour(Honours).

honour(cse):-    
    write('Enter the career you want to pursue out of the options'),nl,
    write('Scientist'),nl,
    write('Machine learning engineer'),nl,
    write('Software Engineer'),nl,
    write('Test Engineer'),nl,
    read(Career),
    specialization(cse,Career).

honour(ece):-    
    write('Enter the career you want to pursue'),nl,
    write('Scientist'),nl,
    write('VLSI_engineer'),nl,
    read(Career),
    specialization(ece,Career).

honour(cb):-    
    write('Enter the career you want to pursue'),nl,
    write('Scientist'),nl,
    read(Career),
    specialization(cb,Career).

specialization(cse, scientist) :- 
    write('Enter the area of your interest from the option below'),nl,
    write('machine learning'),nl,
    write('systems'),nl,
    write('theory'),nl,
    read(Interest),
    interest(Interest, cse,scientist).

specialization(cse, machine_learning_engineer) :- 
    write('Enter the area of your interest'),nl,
    write('computer vision'),nl,
    write('natural language processing'),nl,
    read(Interest),
    interest(Interest, cse, machine_learning_engineer).

specialization(cse, software_engineer) :- 
    write('Enter the area of your interest from the options below'),nl,
    write('front_end'),nl,
    write('back_end'),nl,
    read(Interest),
    interest(Interest, cse, software_engineer).

specialization(cse, test_engineer) :- 
    write('Enter the area of your interest from the options below'),nl,
    write('manual testing'),nl,
    write('automation_testing'),nl,
    read(Interest),
    interest(Interest,cse, test_engineer).

specialization(ece, scientist) :- 
    write('Enter the area of your interest from the options below'),nl,
    write('vlsi'),nl,
    write('systems'),nl,
    read(Interest),
    interest(Interest,ece, scientist).

specialization(ece, vlsi_engineer) :- 
    write('Enter the area of your interest'),nl,
    write('front_end'),nl,
    write('back_end'),nl,
    read(Interest),
    interest(Interest,ece, vlsi_engineer).

specialization(cb, scientist) :- 
    write('Enter the area of your interest from the options'),nl,
    write('Biostatistics'),nl,
    write('computational_proteomics'),nl,
    read(Interest),
    interest(Interest,cb, scientist).   

list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

list_insert(X,L,R) :- list_delete(X,R,L).    

is_member(X,[X|_]).
is_member(X,[_|Tail]):- is_member(X,Tail).

print_list([]):-nl.
print_list([H|T]):-write(H),nl,print_list(T).