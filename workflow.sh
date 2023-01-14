#! /bin/bash
echo
echo "This ٍScript For Enumeration Subdomain"
file=$(cat $1)
flag=0
for domain in $file
do
if ((flag==0))
then
mex=$domain
flag=1
else
mex=$mex,$domain
fi
done
echo
echo "Starting Subfinder"
echo
subfinderdom=$(cat $1|subfinder)
for dosub in ${subfinderdom[@]}
do
echo $dosub>>subdomain.txt
done
echo
echo "Starting amass"
echo
amassdom=$(amass enum -active -passive -brute -d $mex)
for amassub in ${amassdom[@]}
do
echo $amassub>>subdomain.txt
done
echo
echo "Starting httpx"
echo
exec httpx -l subdomain.txt|sort -u -o lifedomain.txt
echo
echo
echo "Good By And Happy Hacke :)"
