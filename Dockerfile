# Run mmCEsim Action
# by Wuqiong Zhao (Teddy van Jerry)
#
# Source:
# https://github.com/mmcesim/run-mmcesim-action

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y build-essential cmake libboost-all-dev git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
