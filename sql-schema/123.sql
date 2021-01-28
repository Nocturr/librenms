INSERT INTO `alert_templates` (`name`, `template`) VALUES ('BGP Sessions.', '{{ $alert->title }}\nSeverity: {{ $alert->severity }}\n @if ($alert->state == 0) Time elapsed: {{ $alert->elapsed }}\r\n @endif\nTimestamp: {{ $alert->timestamp }}\nUnique-ID: {{ $alert->uid }}\nRule:  @if ($alert->name) {{ $alert->name }} @else {{ $alert->rule }} @endif \n @if ($alert->faults) Faults:\n @foreach ($alert->faults as $key => $value)\n#{{ $key }}: {{ $value[\'string\'] }}\nPeer: {{ $value[\'astext\'] }}\nPeer IP: {{ $value[\'bgpPeerIdentifier\'] }}\nPeer AS: {{ $value[\'bgpPeerRemoteAs\'] }}\nPeer EstTime: {{ $value[\'bgpPeerFsmEstablishedTime\'] }}\nPeer State: {{ $value[\'bgpPeerState\'] }}\n @endforeach\n @endif');
INSERT INTO `alert_templates` (`name`, `template`) VALUES ('Ports', '{{ $alert->title }}\nSeverity: {{ $alert->severity }}\n @if ($alert->state == 0) Time elapsed: {{ $alert->elapsed }} @endif\nTimestamp: {{ $alert->timestamp }}\nUnique-ID: {{ $alert->uid }}\nRule:  @if ($alert->name) {{ $alert->name }} @else {{ $alert->rule }} @endif \n @if ($alert->faults) Faults:\n @foreach ($alert->faults as $key => $value)\n#{{ $key }}: {{ $value[\'string\'] }}\nPort: {{ $value[\'ifName\'] }}\nPort Name: {{ $value[\'ifAlias\'] }}\nPort Status: {{ $value[\'message\'] }}\n @endforeach \n @endif');
INSERT INTO `alert_templates` (`name`, `template`) VALUES ('Temperature', '{{ $alert->title }}\nSeverity: {{ $alert->severity }}\n @if ($alert->state == 0) Time elapsed: {{ $alert->elapsed }} @endif \nTimestamp: {{ $alert->timestamp }}\nUnique-ID: {{ $alert->uid }}\nRule:  @if ($alert->name) {{ $alert->name }} @else {{ $alert->rule }} @endif \n @if ($alert->faults) Faults:\n @foreach ($alert->faults as $key => $value)\n#{{ $key }}: {{ $value[\'string\'] }}\nTemperature: {{ $value[\'sensor_current\'] }}\nPrevious Measurement: {{ $value[\'sensor_prev\'] }}\n @endforeach \n @endif');