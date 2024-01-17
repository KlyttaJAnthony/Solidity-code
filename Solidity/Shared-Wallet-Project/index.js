

const contractAddress = "0xB34db0d5aA577998c10c80d76F87AfE58b024e5F"; //contract address for REMIX

/**we need to implement a function to connect users to the user wallet that executes when the user clicks on Connect Wallet button on the page
 * 1) get the current network provider(window.ethereum provided by metamask)
 * 2) get the signer from the user wallet
 * 3) create the contract object using its address, ABI, and current signer to make it the default sender for the contract functions
 * 4) set the account, allowance, and balance field of teh frontend page
 */

const connect = async () => {
    const provider = new ethers.providers.Web3Provider(window.ethereum);
    const signer = provider.getSigner();
    const walletContract = new ethers.Contract(contractAddress, abi, signer);
    const accounts = await window.ethereum.request({
        method: "eth_requestAccounts",
    });
    const account = accounts[0];
    
    document.getElementById("wallet-address").textContent = 
        account.substring(0, 5) + "..." + account.substring(37, 42);
    document.getElementById("pending-allowance").textContent = 
        await walletContract.myAllowance();
    document.getElementById("wallet-balance").textContent = 
        await walletContract.getWalletBalance();
};

/**above is the script to connect to the particular functions of the smart contract for the wallet. If you can see the particualr 
 * document calls from each of the functions in the contract. 
 */

const renew = async () => {
    const account = document.getElementById("user").ariaValueMax;
    const amount = document.getElementById.apply("allowance").value;
    var tx = await walletContract.renewAllowance(account, amount, 86400);
    await tx.wait();
};

const spend = async () => {
    const account = document.getElementById("receiver").value;
    const amount = document.getElementById("amount").value;
    var tx = await walletContract.spendCouns(account, amount);
    await tx.wait();
};