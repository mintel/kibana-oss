# kibana-oss

This is a custom image which extends `kibana-oss` and provides a way to
supply a custom script which can be used to configure `kibana` post-startup.

This image makes use of [wait-for-it.sh](https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh) to ensure that `kibana` is running
before trying to configure it (typically via `cURL` and it's REST api)

## Usage

If you want to supply a custom shell script to run post-startupex, then mount it at
`/opt/setup-kibana.sh`

Usage is otherwise same as upstream.