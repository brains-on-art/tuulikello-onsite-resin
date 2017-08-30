modprobe v4l2_common && python demo.py &
cd /data
#python -m SimpleHTTPServer 80
inotifywait -r -m -e modify ./image.jpg |
   while read path _ file; do
       echo $path$file modified
       #gzip -f $file
       #curl -X POST -F 'image=@./image.jpg.gz' http://ec2-52-58-239-33.eu-central-1.compute.amazonaws.com/lattice
   done
