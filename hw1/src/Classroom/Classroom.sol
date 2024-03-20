// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool public isEnrolled=false;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (isEnrolled) {
            return 123;
        }else{
            isEnrolled = true;
            return 1000;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        IClassroomV2 classroom = IClassroomV2(msg.sender);
        if (classroom.isEnrolled()) {
            return 123;
        }else{
            return 1000;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    /* get the current gas left */
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        // console.log(gasleft());
        uint256 gas = gasleft();
        if (gas > 7000){
            return 1000;
        }else{
            return 123;
        }
    
    }
}
