cityLocation = LoadCityLocations;
nCities = size(cityLocation,1);
path = [30 49 37 33 48 38 45 27 39 44 40 36 8 16 21 19 7 14 22 17 24 2 12 ...
       6 15 13 10 9 23 4 5 18 1 3 11 20 29 50 32 25 26 31 43 35 41 46 28 ...
       42 34 47];              
tspFigure = InitializeTspPlot(cityLocation,[0 20 0 20]); 
connection = InitializeConnections(cityLocation); 
PlotPath(connection,cityLocation,path);     