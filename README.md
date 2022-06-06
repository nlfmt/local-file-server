# Local File Server

Quickly serve files from a directory to all computers on your local network.\
Navigate that directory with an easy-to-use web interface, click any file to download.


![example](https://user-images.githubusercontent.com/71983360/172081819-2e0ea5b4-c423-48be-9e1c-517e1d5af301.png)


## Installation

1. Clone this repository to your computer.

    ```
    git clone https://github.com/nlfmt/local-file-server.git
    ```

2. Install the dependencies.

    ```
    cd local-file-server
    npm install
    ```

3. Optionally add the script folder to your PATH.


## Usage
You can run the serve with `npm start` or `node main.js`, but in this example\
we'll assume you have added the `scripts` folder to your PATH.

```
serve                   # serve the current directory on port 3000
serve . 8000            # serve the current directory on the given port
serve /path/to          # serve the given directory on port 3000
serve /path/to 8000     # serve the given directory on the given port
```

## License
This Project uses the MIT License, see the LICENSE file for more information.