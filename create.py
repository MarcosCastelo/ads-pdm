import os
import sys
import requests

def show_help():
    print("Usage: create [OPTION] [VALUE]")
    print("OPTIONS:")
    print("        start [PROJECT NAME]: Create new flutter project. eg: start new_folder")

if len(sys.argv) < 2:
    show_help()
    sys.exit()


if sys.argv[1] != "start":
    show_help()
    sys.exit()


l_dirContent = os.listdir('.')
s_gitignore_url = "https://www.toptal.com/developers/gitignore/api/flutter"


if len(l_dirContent) == 1:
    os.system("git init")
    r = requests.get(s_gitignore_url)
    s_file_name = ".gitignore"
    with open(s_file_name, "wb") as f:
        print ("Downloading %s" % s_file_name)
        total_length = r.headers.get('content-length')

        if total_length is None:
            f.write(r.content)
        else:
            dl = 0
            total_length = int(total_length)
            for data in r.iter_content(chunk_size=4096):
                dl += len(data)
                f.write(data)
                done = int(50 * dl / total_length)
                sys.stdout.write("\r[%s%s]" % ('=' * done, ' ' * (50-done)))
                sys.stdout.flush()
