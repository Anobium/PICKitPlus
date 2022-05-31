Rev230/3

    Script 326 copied to 360 to resolve K40 read error on config 6.  Script was reading only 5 configs not 6 configs. Change one paramter from 4 to 5.
    Script 328 copied to 361 to resolve K40 write error on config 6.  Script was writing only 5 configs not 6 configs. Change one paramter from 4 to 5.
    Reverted 326 back to reading 5 configs.

    So, chips with 5 configs uses 326 & 328; chips with 6 configs uses 360 & 361 (which are currenly the K40's)
