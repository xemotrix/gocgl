
# ffmpeg -framerate 60 -i "triangle_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p "videos/triange2d.mp4"
# ffmpeg -framerate 60 -i "triangle3d_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p "videos/triange3d.mp4"
# ffmpeg -framerate 60 -i "lucy_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p "videos/lucy.mp4"
ffmpeg -framerate 30 -i "map_frames/out%04d.ppm" -vcodec libx264 -pix_fmt yuv420p "videos/map.mp4"
