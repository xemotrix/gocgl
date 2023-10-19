
text_filter="[0:v]drawtext="
# text_filter+="Lato-Light.ttf"
text_filter+="fontfile=/Users/chema.rodriguez/Documents/gocgl/.fonts/CabifyCircular-Book.ttf: "
# text_filter+="fontfile=CabifyCircular-Book.ttf"
text_filter+="textfile=scripts/message.txt:"
text_filter+=":fontsize=75"
text_filter+=":fontcolor=ffffff"
text_filter+=":alpha='if(lt(t,1),0,if(lt(t,1.3),(t-1)/0.3,if(lt(t,2.3),1,if(lt(t,2.6),(0.3-(t-2.3))/0.3,0))))'"
text_filter+=":x=(w-text_w)/2"
text_filter+=":y=(h-text_h)*4/5"

# ffmpeg -i .videos/map_mad.mp4 -filter_complex "[0:v]drawtext=fontfile=Lato-Light.ttf:text='something':fontsize=75:fontcolor=ffffff:alpha='if(lt(t,3),0,if(lt(t,3.3),(t-3)/0.3,if(lt(t,4.3),1,if(lt(t,4.6),(0.3-(t-4.3))/0.3,0))))':x=(w-text_w)/2:y=(h-text_h)/2" .videos/map_david_text.mp4

ffmpeg -y \
    -i .videos/map_mad.mp4 \
    -filter_complex "$text_filter" \
    .videos/map_david_text.mp4
