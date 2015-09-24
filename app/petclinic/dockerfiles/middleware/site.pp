class { 'tomcat': } ->
class { 'java': } ->
tomcat::instance { 'install':
  source_url => 'http://mirrors.ae-online.de/apache/tomcat/tomcat-7/v7.0.62/bin/apache-tomcat-7.0.62.tar.gz'
} ->
exec { 'run':
  command => '/opt/apache-tomcat/bin/catalina.sh start'
} ->
tomcat::war { 'all.war':
  catalina_base => '/opt/apache-tomcat',
  war_source    => 'http://dl.bintray.com/mh/meow/all-1.0.0-GA.war',
}