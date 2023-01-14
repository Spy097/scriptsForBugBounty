# Scripts For Bug Bounty

## Description
By using this script you can Enumerate subdomain , this script use multi tools to enumerate subdomains and chick a life subdomains.
## Action Steps In Tool
1.The tool start with using subfinder.
2.Using amass with default options to enumerate active,passive and brute forcing subdomain.
3.After Enumeration end the script  wile creatting file subdomain.txt
4.Then the script run httpx in list of subdomain.txt and the output will be in lifedomain.txt file
## How to use
After downloading the script, use chmod + x, change the state to executable you can use ```chmod +x workflow.sh```
Then execute script in file of domains ```./workflow.sh domains.txt```
