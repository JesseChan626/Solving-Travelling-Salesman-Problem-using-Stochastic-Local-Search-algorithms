# Solving-Travelling-Salesman-Problem-using-Stochastic-Local-Search-algorithms
Advanced Aspects of Nature Inspired Search and Optimisation Assignment
Aim:
You are required to implement Simulated Annealing (SA) and Tabu search algorithms to solve the Odyssey of Ulysses 22 cities Travelling Salesman Problem (TSP).

The original Simulated Annealing paper published in Science can be found here (Links to an external site.)Links to an external site.. A tutorial on Tabu search is available here. (Links to an external site.)Links to an external site.

Requirements:
You can use any programming languages to complete this assignment. However, if you want to use languages other than Matlab/Octave, you should make your program executable/runnable. For example, if you use Java, you need to compile it. If you use Python, make sure it can be run in a python online IDE such as TutorialPoint (Links to an external site.)Links to an external site..
Your program should be able to read in the ulysses22.tsp or the .csv filePreview the document.
Calculate distance based on Geographical distance. Please read this document (Links to an external site.)Links to an external site. (Section 2.4) to learn how to calculate Geographical distance. In order to check whether your implementation of the Geographical distance calculation is correct or not, you can download this file (Links to an external site.)Links to an external site. which gives you the optimal tour with the optimal distance of 7013. Due to the differences in float point calculation in different programming languages, you can expect the value from your calculation is a bit larger or smaller (< +/-5%) than 7013. Please record the value of your calculation if it is different.
Implement the Simulated Annealing (SA) and Tabu Search algorithms. For Tabu Search, you can implement the simplest version with the simplest Tabu list which only remembers recently visited solutions.
Execute maximum 30 trial runs for each algorithm to tune the parameters (Hint: You probably need to do some literature search to find the appropriate parameter ranges). Record how you tune the parameters.
After obtaining good parameters, execute 30 independent runs with 2000 iterations for each algorithm. Record the average distance and standard deviation from the results over the 30 runs for each algorithm, respectively.
Compare the results for these two algorithms statistically using a Wilcoxon signed-rank test (Links to an external site.)Links to an external site.. If you do not know the statistical hypothesis test, please read this article (Links to an external site.)Links to an external site..
Write a report to report your results. The report should include
Brief introduction of the Simulated Annealing and Tabu Search algorithms. You need to explain these algorithms by using a flowchart and pseudo-code.
Discuss what the parameters are and how you tuned them.
You should also list all the average result and standard deviations obtained from the 30 runs of the algorithms
Discuss how you compare the results obtained by SA and Tabu search statistically.
