#!/bin/sh

weather=$(curl -s "https://wttr.in/?format=%C")
temp=$(curl -s "https://wttr.in/?format=%t")
feels_like_time=$(curl -s "https://wttr.in/?format=%f")

if [[ $weather == *"Sunny"* ]]; then icon=""
elif [[ $weather == *"Clear"* ]]; then icon=""

elif [[ $weather == *"Partly cloudy"* ]]; then icon=""
elif [[ $weather == *"Cloudy"* ]]; then icon=""

elif [[ $weather == *"Very cloudy"* ]]; then icon=""
elif [[ $weather == *"Overcast"* ]]; then icon=""
elif [[ $weather == *"Fog"* ]]; then icon=""
elif [[ $weather == *"Mist"* ]]; then icon=""

elif [[ $weather == *"Light rain"* ]]; then icon=""
elif [[ $weather == *"Patchy rain"* ]]; then icon=""
elif [[ $weather == *"Light drizzle"* ]]; then icon=""
elif [[ $weather == *"Showers"* ]]; then icon=""
elif [[ $weather == *"Rain"* ]]; then icon=""

elif [[ $weather == *"Light snow"* ]]; then icon=""
elif [[ $weather == *"Patchy snow"* ]]; then icon=""
elif [[ $weather == *"Snow"* ]]; then icon=""

elif [[ $weather == *"Thunder"* ]]; then icon=""

else icon=""
fi

echo "$icon <span color='#dedede'>$temp ($feels_like_time)</span>"