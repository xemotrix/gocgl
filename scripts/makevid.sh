
ffmpeg -framerate 30 -i "triangle_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p triange2d.mp4
ffmpeg -framerate 30 -i "triangle3d_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p triange3d.mp4
ffmpeg -framerate 30 -i "lucy_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p lucy.mp4
