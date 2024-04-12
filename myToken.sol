//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.5.0 < 0.9.0;

contract Token{
    string public name= "Hardhat Token";
    string public symbol= "HHT";
    uint public totalsupply = 10000;

    address public owner;
    mapping(address=>uint) balances;

    constructor(){
        balances[msg.sender]=totalsupply;
        owner=msg.sender;
    }

    function transfer(address to, uint amount)external {
        require(balances[msg.sender]>=amount,"Not enough token");
        balances[msg.sender] -=amount;
        balances[to]+=amount;
    }
    function balanceOf(address account) external view returns(uint256){
        return balances[account];
    }
}
