// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    

     string public tokenName = "MoneyToken";
    string public tokenAbbrv = "MT";
    uint public totalSupply = 0;


    mapping(address => uint) public balances;

   

     function mint (address _recipient, uint _amount) public {
        totalSupply += _amount;  
        balances[_recipient] += _amount; 
     }

    
    
   function burn (address _recipient, uint _amount) public {
        if (balances[_recipient] >= _amount)
        totalSupply -= _amount; 
        balances[_recipient] -= _amount;  
    }
}
