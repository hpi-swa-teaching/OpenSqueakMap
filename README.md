# OpenSqueakMap [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-04.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-04)
An [OpenStreetMap](http://www.osm.org) browser for Smalltalk (Squeak)

## Running OpenSqueakMap

1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed.

2. Load the project by running the following in your workspace:
	```smalltalk
	Metacello new
	  baseline: 'OpenSqueakMap';
	  repository: 'github://HPI-SWA-Teaching/SWT16-Project-04:master/packages';
	  onConflict: [:ex | ex allow];
	  load
	```

3. To display a coordinate on the map, run the following in your workspace:
	```smalltalk
	OpenSqueakMap open: longitude@latitude
	```

Coordinates are to be passed as decimal numbers. For example, if you want to look at the coordinate 8°30'N 13°00'W, run:
```smalltalk
OpenSqueakMap open: -13@8.5 "West and south coordinates become negative"
```

You can pass an optional zoom level. A zoom level of 0 will show you the entire world, 20 will show you a single building. 
```smalltalk
OpenSqueakMap open: -13@8.5 at: 16
```

The default zoom level is 17. OpenSqueakMap currently does not perform too well on lower levels due to the high amount of data that needs to be downloaded.

## Configuration

TODO documentation, check back soon!

## Authors

* [**Lukas Behrendt**](https://github.com/Blaidd-Drwg)
* [**Pawel Böning**](https://github.com/PawelBoe)
* [**Carl Gödecken**](https://github.com/MasterCarl)
* [**Lisa Ihde**](https://github.com/julisa99)
* [**Daniel Thevessen**](https://github.com/danthe96)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
