		for(var/i in GLOB.mob_living_list)
			switch(time)
				if(0 to 250000)
					light_power = 0.25
					light_range = 7
				if(250001 to 260000)
					light_power = 0.50
					light_range = 8
				if(260001 to 270000)
					light_power = 0.75
					light_range = 8
				if(270001 to 702000)
					light_power = 1
					light_range = 8
				if(702001 to 712000)
					light_power = 0.75
					light_range = 8
				if(712001 to 722000)
					light_power = 0.50
					light_range = 8
				if(722001 to INFINITY)
					light_power = 0.25
					light_range = 7