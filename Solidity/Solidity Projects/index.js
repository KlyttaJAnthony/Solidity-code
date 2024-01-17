const contractAddress = "0xd9145CCE52D386f254917e481eB44e9943F39138";

const connect = async () =>{
    const provider = new ethers.providers.Web3Provider(window.ethereum);
    const signer = provider.getSigner();
    const walletContract = new ethers.contract(contractAddress, abi, signer);
    const accounts = await window.ethereum.request({

    });
    const account = accounts[0];
    document.
}
