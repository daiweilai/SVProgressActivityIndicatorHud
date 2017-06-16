SVProgressActivityIndicatorHud
=================================
To enhance <a href="https://github.com/SVProgressHUD/SVProgressHUD" target="_blank">SVProgressHud</a>, let it support more beautify animation from [DGActivityIndicatorView](https://github.com/gontovnik/DGActivityIndicatorView){:target="_blank"}

Demo Snapshot  
----------------------------------- 
![github](https://github.com/daiweilai/SVProgressActivityIndicatorHud/blob/master/snapshot.gif "github")

Using
-----------------------------------
#### install SVProgressHud
if you are using SVProgressHud in your project just skip this part！
Otherwise,just check the [SVProgressHud installation guide](https://github.com/SVProgressHUD/SVProgressHUD){:target="_blank"} .

#### install SVProgressActivityIndicatorHud
* Drag the SVProgressActivityIndicatorHud/SVProgressActivityIndicatorHud/Sources/* files into your project.

#### import

```objective-c
#import "SVProgressHUD+DGActivityIndicatorView.h"
```

#### set animation type

```objective-c
[SVProgressHUD setActivityIndicatorType:TYPE];
```


#### set tint color

```objective-c
[SVProgressHUD setActivityIndicatorTintColor:TINT_COLOR];
```

#### unset animation type

```objective-c
[SVProgressHUD unsetActivityIndicator];		
```

Then，use it like SVProgressHud way
```objective-c
[SVProgressHUD show];		
```

License  
-----------------------------------
MIT License

Copyright (c) 2017 David Day

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.		


