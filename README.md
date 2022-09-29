# 如何發行自己的虛擬貨幣到 幣安智能鏈（BSC）


## Installation

- Chrome 瀏覽器掛上幣安錢包，並連上你的幣安錢包
- https://chrome.google.com/webstore/detail/binance-wallet/fhbohimaelbohpjbbldcngcnapndodjp

- 充值約 1 BNB 幣, 空投時網格手續費需要

## Development

錢包:
- 開瀏覽器  https://remix.ethereum.org/
- 把 contracts 目錄下新增一個檔案 BEP20.sol 
內容如下
```sh
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token//ERC20/ERC20.sol";
contract Token is ERC20 {
// 你的幣名
 string public token_name = "Rusli Wu Coin";  
// 幣的顯示簡寫
 string public token_ticker = "RWC";
 constructor () ERC20(token_name, token_ticker) {
 _mint(msg.sender, 100000000000 * (10 ** uint256(decimals())));
 }
}

```

#### Building for source

編譯:

- 點左邊的編譯按鈕 編譯 BEP20.sol
- complier 切換到與 BE20.sql 宣告的版本相同  0.8.0
- Auto complile 打勾
- Enable optimization 打勾
- 點下 Compile BEP20.sol 按鈕

發行:
- ENVIRONMENT 換成 Inject Provider, 這時會自動開你的瀏覽器安裝的錢包
- 錢包那邊請按確認，過一段時間後就開 https://bscscan.com/tx/0x62b09e18cfa0793211af14b148da93dd0520961c3d635f9a26d5f06fe0d95933
- 複製 Interacted With (To) 的 幣種 Contract
- 到你的情包，增加自動貨幣，貼上該 Contract 


## License
MIT
