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
			package: 'OpenSqueakMap' with: [spec requires: #('libraries')].
		spec
			group: 'default' with: #('OpenSqueakMap');
			group: 'libraries' with: #('XMLSupport');
			group: 'Tests' with: #('OpenSqueakMap');
			group: 'TravisCI' with: #('Tests')].