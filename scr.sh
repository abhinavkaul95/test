SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
. venv/bin/activate
if [ "$1" = "--start" ]; then
    python $SCRIPT_DIR/test.py
elif [ "$1" = "--stop" ]; then
    pkill -9 python
else
    pkill -9 python
    python test.py
fi
