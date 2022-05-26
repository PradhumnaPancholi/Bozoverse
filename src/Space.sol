// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";
import "openzeppelin-contracts/contracts/utils/Counters.sol";

contract Bozo is ERC721URIStorage, Ownable{
		using Counters for Counters.Counter;
		Counters.Counter private _tokenId;

		bool public paused = false; //default value is false //

		uint256 public COST = 0.69 ether; //dummy value for now//
		uint256 constant MAX_SUPPLY = 10000; //dummy value for now//

		constructor() ERC721("Bozo", "BOZO") {}

		function pause() external returns (bool) {
				paused = true;
				return paused;
		}

		function resume() external returns (bool) {
				paused = false;
				return paused;
		}

		function withdraw() external returns (bool) {
				return false;
		}

		function mint() public returns(uint256){
				return 5;
		}

		function mint(uint256 _numberOfTokens) external returns (uint256) {
				return 5;
		}

		function mintBatch(uint256 _numberOfTokens) external {
		}

		
}
