# Meeting with Georgios about IRC-2020-2 Paper (July 21th)
## Main Points
* The main attempted topic of the paper might be: autonomous energy-efficient drone landing 
* Focus on the energy spent doing the "autonomous" and "landing" using powprof
* Exploring possibilities with different QoS of those two components (the autonomous would be the detection using CNN, landing [attempt] Henrik's marker detector [probably not much to optimize though])
* For the state-of-the-art of the "landing", wait for zipped papers by relevance from Georgios later in the week
	* MPC algorithm aka optimal control [no would be too much stuff] 
	* the major contribution to "landing" part might be: marker structure from Henrik and wind disturbances simulation
		* as the wind disturbances are variable
		* [focus more on system integration / how all the parts come together to develop the agricultural use-case]
		* moving platform also to be considered
		* agricultural use-case
		* what is done from the CNN is yolo v3 with a trained model
		* an idea is to detect all of the objects in one big class [this is a good idea but it seems like a paper by itself, where one discovers the possibilities of what happens training on collections of objects / hence no goes out of the topic] [use tiny yolo for this and then eventually a big yolo for everything]
		* use of fixed-wing [would connect nicely to the other IRC paper, but a lot of work / no time]
## Title
* working title: VTOL drone vision-based energy-efficient tracking and landing for moving platform for an agricultural application [VTOL?]
