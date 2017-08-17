FQDNLookup false
Interval {{ COLLECTD_INTERVAL }}
Timeout 2
ReadThreads 5

LoadPlugin python
<Plugin python>
  Import "collectd_gnocchi"
  <Module collectd_gnocchi>
    Endpoint "http://gnocchi-api:8041/"
    User admin
  </Module>

  Import "hector.collectd"
  <Module "hector.collectd">
    URL "https://bugzilla.redhat.com"
    Name opstools
    Username "{{ BUGZILLA_USERNAME }}"
    Password "{{ BUGZILLA_PASSWORD }}"
    Interval 3600
    Query "https://bugzilla.redhat.com/buglist.cgi?bug_status=NEW&bug_status=ASSIGNED&bug_status=POST&bug_status=MODIFIED&bug_status=ON_DEV&bug_status=ON_QA&bug_status=VERIFIED&classification=Red%20Hat&f1=cf_internal_whiteboard&f2=cf_devel_whiteboard&j_top=OR&o1=substring&o2=substring&product=Red%20Hat%20Enterprise%20Linux%207&product=Red%20Hat%20Enterprise%20Linux%206&product=Red%20Hat%20OpenStack&query_format=advanced&v1=opstools&v2=opstools"
    Query "https://bugzilla.redhat.com/buglist.cgi?bug_status=NEW&bug_status=ASSIGNED&bug_status=POST&bug_status=MODIFIED&bug_status=ON_DEV&bug_status=ON_QA&bug_status=VERIFIED&classification=Red%20Hat&component=cloud-init&product=Red%20Hat%20Enterprise%20Linux%207&product=Red%20Hat%20Enterprise%20Linux%206&product=Red%20Hat%20OpenStack&query_format=advanced"
  </Module>
</Plugin>
