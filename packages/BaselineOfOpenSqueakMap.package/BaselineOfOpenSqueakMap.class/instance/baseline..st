baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		spec
			package: 'OpenSqueakMap-Core';
			package: 'OpenSqueakMap-Tests' with: [spec requires: #('default')].
		spec
			group: 'default' with: #('OpenSqueakMap-Core');
			group: 'Tests' with: #('OpenSqueakMap-Tests');
			group: 'TravisCI' with: #('Tests')].