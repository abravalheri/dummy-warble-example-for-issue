###################### Test 1 ######################
# without `config.jrubyc_options = "--javac"`
# without `config.features = ["compiled"]
####################################################

/media/sf_workspace/warbletest> warble
rm -f warbletest.jar
Creating warbletest.jar

/media/sf_workspace/warbletest> java -jar warbletest.jar
/home/vagrant/.local/share
/usr/local/share
uri:classloader:/META-INF/jruby.home/share



# ----------------------------------------------------------------------------------------------------------------------------------- #

###################### Test 2 ######################
# without `config.jrubyc_options = "--javac"`
# **with** `config.features = ["compiled"]
####################################################

/media/sf_workspace/warbletest> warble
java -classpath "/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-core-9.1.5.0-complete.jar":"/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-stdlib-9.1.5.0.jar"  org.jruby.Main -S jrubyc  "lib/foobar.rb"
rm -f warbletest.jar
Creating warbletest.jar
rm -f lib/foobar.class

/media/sf_workspace/warbletest> java -jar warbletest.jar
=> /home/vagrant/.local/share
=> /usr/local/share
=> uri:classloader:/META-INF/jruby.home/share



# ----------------------------------------------------------------------------------------------------------------------------------- #

###################### Test 3 ######################
# **with** `config.jrubyc_options = "--javac"`
# **with** `config.features = ["compiled"]
####################################################

/media/sf_workspace/warbletest> warble
java -classpath "/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-core-9.1.5.0-complete.jar":"/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-stdlib-9.1.5.0.jar"  org.jruby.Main -S jrubyc --javac "lib/foobar.rb"
TypeError: no implicit conversion of nil into String
                        join at org/jruby/RubyFile.java:878
     block in generate_javac at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler/java_class.rb:17
                        find at org/jruby/RubyEnumerable.java:645
              generate_javac at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler/java_class.rb:16
  compile_files_with_options at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler.rb:303
                compile_argv at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler.rb:94
                      <main> at uri:classloader:/META-INF/jruby.home/bin/jrubyc:5
warble aborted!
Compilation of .rb files failed (pid 14008 exit 1)
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/bin/warble:22:in `<main>'
Tasks: TOP => jar:compiled
(See full trace by running task with --trace)
exit 1

/media/sf_workspace/warbletest> warble --trace
** Invoke default (first_time)
** Invoke jar (first_time)
** Execute jar
** Invoke jar:compiled (first_time)
** Execute jar:compiled
java -classpath "/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-core-9.1.5.0-complete.jar":"/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-stdlib-9.1.5.0.jar"  org.jruby.Main -S jrubyc --javac "lib/foobar.rb"
TypeError: no implicit conversion of nil into String
                        join at org/jruby/RubyFile.java:878
     block in generate_javac at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler/java_class.rb:17
                        find at org/jruby/RubyEnumerable.java:645
              generate_javac at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler/java_class.rb:16
  compile_files_with_options at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler.rb:303
                compile_argv at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler.rb:94
                      <main> at uri:classloader:/META-INF/jruby.home/bin/jrubyc:5
warble aborted!
Compilation of .rb files failed (pid 14692 exit 1)
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/jar.rb:78:in `block in sh_jrubyc'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/file_utils.rb:57:in `sh'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/file_utils_ext.rb:34:in `sh'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/file_utils_ext.rb:34:in `sh'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/jar.rb:77:in `sh_jrubyc'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/jar.rb:68:in `block in run_jrubyc'
org/jruby/RubyArray.java:1778:in `each_slice'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/file_list.rb:81:in `each_slice'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/jar.rb:60:in `run_jrubyc'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/jar.rb:50:in `compile'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/task.rb:109:in `block in define_compiled_task'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:240:in `block in execute'
org/jruby/RubyArray.java:1734:in `each'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:235:in `execute'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:179:in `block in invoke_with_call_chain'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/monitor.rb:214:in `mon_synchronize'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:172:in `invoke_with_call_chain'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:165:in `invoke'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/task.rb:88:in `block in define_main_task'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/task.rb:82:in `block in define_main_task'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:240:in `block in execute'
org/jruby/RubyArray.java:1734:in `each'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:235:in `execute'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:179:in `block in invoke_with_call_chain'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/monitor.rb:214:in `mon_synchronize'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:172:in `invoke_with_call_chain'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:201:in `block in invoke_prerequisites'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:199:in `invoke_prerequisites'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:178:in `block in invoke_with_call_chain'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/monitor.rb:214:in `mon_synchronize'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:172:in `invoke_with_call_chain'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/task.rb:165:in `invoke'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:150:in `invoke_task'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:106:in `block in top_level'
org/jruby/RubyArray.java:1734:in `each'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:106:in `block in top_level'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:115:in `run_with_threads'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:100:in `top_level'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:78:in `block in run'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:176:in `standard_exception_handling'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/stdlib/rake/application.rb:75:in `run'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/application.rb:79:in `run'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/lib/warbler/application.rb:74:in `run'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/warbler-2.0.3/bin/warble:11:in `<main>'
org/jruby/RubyKernel.java:974:in `load'
/home/vagrant/.rbenv/versions/jruby-9.1.5.0/bin/warble:22:in `<main>'
Tasks: TOP => jar:compiled



# ----------------------------------------------------------------------------------------------------------------------------------- #

###################### Test 4 ######################
# Use the command printed by Warbler to compile
####################################################

/media/sf_workspace/warbletest> java -classpath "/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-core-9.1.5.0-complete.jar":"/home/vagrant/.rbenv/versions/jruby-9.1.5.0/lib/ruby/gems/shared/gems/jruby-jars-9.1.5.0/lib/jruby-stdlib-9.1.5.0.jar"  org.jruby.Main -S jrubyc --javac "lib/foobar.rb"
TypeError: no implicit conversion of nil into String
                        join at org/jruby/RubyFile.java:878
     block in generate_javac at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler/java_class.rb:17
                        find at org/jruby/RubyEnumerable.java:645
              generate_javac at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler/java_class.rb:16
  compile_files_with_options at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler.rb:303
                compile_argv at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/jruby/compiler.rb:94
                      <main> at uri:classloader:/META-INF/jruby.home/bin/jrubyc:5



# ----------------------------------------------------------------------------------------------------------------------------------- #

###################### Test 5 ######################
# Just compile the file normally as indicated in JRuby documentation
####################################################

/media/sf_workspace/warbletest> jrubyc --javac "lib/foobar.rb"

/media/sf_workspace/warbletest> javap AClass.class
Compiled from "AClass.java"
public class AClass extends org.jruby.RubyObject {
  public static org.jruby.runtime.builtin.IRubyObject __allocate__(org.jruby.Ruby, org.jruby.RubyClass);
  public AClass();
  public static java.lang.Object run();
  static {};
}

