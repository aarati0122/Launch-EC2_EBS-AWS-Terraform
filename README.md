# Tasks Information

1. Create a key pair
2. Create a security group
3. Launch an instance using the above created key pair and security group.
4. Create an EBS volume of 1 GB.
5. The final step is to attach the above created EBS volume to the  instance you created in the previous steps.

- So you can see the .tf file where I write the code which can pereform  above task  [Click Here](CodeFile/launch_ec2_ebs.tf)

![init_command](https://user-images.githubusercontent.com/60148173/126897043-f6969f21-8907-4e51-9aee-cf11c9cd9466.PNG)

![terr_plan](https://user-images.githubusercontent.com/60148173/123553305-ff686f80-d797-11eb-95f6-bb8a88884d93.PNG)

![terraform_apply](https://user-images.githubusercontent.com/60148173/123553306-00010600-d798-11eb-85e3-d69e2d2e2265.PNG)

![success](https://user-images.githubusercontent.com/60148173/123553303-fecfd900-d797-11eb-815d-dd99d16ebc1f.PNG)


# In Console We Can See It Created

![key_pair](https://user-images.githubusercontent.com/60148173/123553301-fd061580-d797-11eb-9c96-583f0462ccdd.PNG)

![SG](https://user-images.githubusercontent.com/60148173/123553302-fe374280-d797-11eb-9f47-24501119898a.PNG)

![EBS](https://user-images.githubusercontent.com/60148173/123553298-fbd4e880-d797-11eb-8c57-501b59663aef.PNG)

![Ec2](https://user-images.githubusercontent.com/60148173/123553300-fc6d7f00-d797-11eb-9540-b39340060c57.PNG)

![destroy](https://user-images.githubusercontent.com/60148173/123553297-f9728e80-d797-11eb-87c0-963267fdfd61.PNG)






