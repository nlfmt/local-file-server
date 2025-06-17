> [!CAUTION]
> This project contains vulnerabilities, don't use it in uncontrolled environments! \
> If you run this program on your machine, it exposes an API to download any file on your machine, due to bad path validation. \
> This project has been rewritten from the ground up with safety and speed in mind, you can find it under [nlfmt/serve](https://github.com/nlfmt/serve). \
> As a consequence, this repo is no longer being maintained.

# Local File Server

Quickly serve files from a directory to all computers on your local network.\
Navigate that directory with an easy-to-use web interface, click any file to download.


![example](https://user-images.githubusercontent.com/71983360/172081819-2e0ea5b4-c423-48be-9e1c-517e1d5af301.png)



## Installation *(with binaries)*

1. Download the binaries from the [releases page](https://github.com/nlfmt/local-file-server/releases).

2. Extract the binaries into any directory.
3. For Linux & Mac OS X you need to turn the binary into an executable.

    ```sh
    chmod +x serve
    ```

4. Add the right binary to your `PATH` environment variable.\
    On Linux, you can also use `ln -s /path/to/serve /usr/local/bin/serve`


## Installation *(with nodejs & start script)*

1. Clone this repository to your computer.

    ```sh
    git clone https://github.com/nlfmt/local-file-server.git
    ```

2. Install the dependencies.

    ```sh
    cd local-file-server

    npm i   # installs express & pkg modules
    ```

3. Optionally add the script folder to your PATH.


## Usage
You can run the server with `npm start` or `node main.js`, but in this example\
we'll assume you have added the `serve` script to your PATH.

```bash
serve                # serve the current directory on port 3000
serve . 8000         # serve the current directory on the given port
serve /path/to       # serve the given directory on port 3000
serve /path/to 8000  # serve the given directory on the given port
```

## Building

If you want to build the executables yourself, you need to:
 - install [nodejs](https://nodejs.org/en/)
 - install npm (usually included with nodejs)

then run the following commands:

```sh
npm i                   # installs express & pkg modules
npm run build           # builds win, mac & linux binaries to ./build

# You can also only build for one platform:
npm run build:win       # builds win binary to ./build/win
npm run build:mac       # builds mac binary to ./build/mac
npm run build:linux     # builds linux binary to ./build/linux
```


## Issues & Improvement Ideas

If you have any issues or ideas, please [open an issue](https://github.com/nlfmt/local-file-server/issues).


## License
This Project uses the MIT License, see the [LICENSE](https://github.com/nlfmt/local-file-server/blob/master/LICENSE) file for more information.
