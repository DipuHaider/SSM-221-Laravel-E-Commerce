<!DOCTYPE html>
<html lang="en">
<head>

	@include('frontend.include.head')
    @include('frontend.include.css')

</head>

<body>
	
	@include('frontend.include.header')

	@include('frontend.include.slider')
	

	@yield('frontend-content')
		
	
	@include('frontend.include.footer') 	

	@include('frontend.include.script')  
    
</body>
</html>