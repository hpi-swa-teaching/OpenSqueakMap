baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		spec project: 'XMLSupport' with: [
			spec
				className: 'ConfigurationOfXMLSupport';
				repository: 'http://www.squeaksource.com/MetacelloRepository';
				versionString: #stable].
		spec
			package: 'OpenSqueakMap-Core' with: [spec requires: #('libraries')];
			package: 'OpenSqueakMap-Tests' with: [spec requires: #('default')].
		spec
			group: 'default' with: #('OpenSqueakMap-Core');
			group: 'libraries' with: #('XMLSupport');
			group: 'Tests' with: #('OpenSqueakMap-Tests');
			group: 'TravisCI' with: #('Tests')].