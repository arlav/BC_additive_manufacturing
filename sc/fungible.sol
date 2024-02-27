//SPDX-License-Identifier: MIT



pragma solidity ^0.8.18; //above the 08.18 compiler


//todo:
//import token Contracts
//structure token information for fungible components
//explore other contracts.

contract SimpleStorage {

  bool hasFavToken = true;
  address myAddress = 0xAcFD6478f944E08cfd040d81F6426ee423eFf100; //where is the contract deployed on sepolia
  address myAddress2 = 0x24Fa92715785d31107bFcEcE518335FFF840F240; //second address where this is deployed
  string favTokenInText = "seventeen";
  bytes32 favBytes32 = "dog";

  uint256 myFavToken; // by default 0 - this is a state variable
  //uint256 public myFavNumber;

  //Complex Types

  //uint256[] listOfFavNumbers; //this is an array

  struct Component {
        uint256 favToken;
      string name;
}

  //tedious example - instead of creating the pairs one by one we will create a dynamic array
Component public pat = Person({favToken:7, name:"Pat"});

// uint256[] public anArray;
Component[] public listOfB; //"Person" dynamic array, visibility public, variable name for the empty list/array

  // Chelsea => 23
mapping(string => uint256) public nameToFavToken;

//Functions
//
function store (uint256 _favToken) public virtual { //adding virtual so that the function is overridable
  myFavToken = _favToken; //with the _ it is a local variable
}


}
