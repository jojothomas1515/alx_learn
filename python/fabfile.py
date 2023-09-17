#!/urs/bin/python3

from fabric.api import local, sudo, run, env, put

env.use_ssh_config = True
env.hosts = ['alx-web', 'alx-web-2']

def show_dir():
   res = run("ls", quiet=True)
   print(res)

def put_fab():
   res = put("fabfile.py", "~/")
   print(res)
