from catthehacker/ubuntu:rust-20.04


run apt update && apt install sudo && sudo apt upgrade -y

run sudo apt install build-essential pkg-config libssl-dev git-all -y
run sudo apt install -y protobuf-compiler

env prover-id=0aotw1IIzYgYjWhh89J0RaZB9T92
run mkdir -p ~/.nexus
run echo $prover-id > ~/.nexus/prover-id
run git clone https://github.com/nexus-xyz/network-api ~/.nexus/network-api




#(cd $REPO_PATH/clients/cli && cargo run --release --bin prover -- beta.orchestrator.nexus.xyz)

run cd ~/.nexus/network-api/clients/cli && cargo build --release --bin prover

cmd ["~/.nexus/network-api/clients/cli/target/release/prover", "--", "beta.orchestrator.nexus.xyz"]