// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Shop} from "../src/ethernaut/shop/shop.sol";
import {Attack_shop} from "../src/ethernaut/shop/attack_shop.sol";
contract shopTest is Test {
    Shop public shop;
Attack_shop public attack;
    function setUp() public {
        shop = new Shop();
       attack = new Attack_shop(address(shop));
    }

    function test_shopprice() public {
    assertEq(shop.price(),100);
    }
    function test_attact() public {

    }


}
