modprobe v4l2_common && python demo.py &
cd /data
#python -m SimpleHTTPServer 80
inotifywait -r -m -e modify ./data/image.jpg |
   while read path _ file; do
       echo $path$file modified
       #curl -X POST -F 'image=@./data/image.jpg' http://ec2-52-58-239-33.eu-central-1.compute.amazonaws.com/lattice
   done
