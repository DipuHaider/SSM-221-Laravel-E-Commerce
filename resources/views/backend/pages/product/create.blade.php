@extends ('backend.template.layout')

@section('dashboard-content')
<div class="br-mainpanel">
  <div class="br-pagetitle">
    <i class="icon ion-ios-home-outline"></i>
    <div>
      <h4>Upload a new product</h4>
      <p class="mg-b-0">New Product Upload.</p>
    </div>
  </div>

  <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="br-section-label">Create a Product</h6>
          <p class="br-section-text">Enter a Product here.</p>

          <div class="row mg-b-20">
            <div class="col-md">
              <div class="card card-body">
                <!--Create New Product Form Start -->
					<form action="{{ route('storeProduct') }}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="from-group">
							<label>Product Title</label>
							<input type="text" name="title" class="form-control">
						</div>

						<div class="from-group mb-2">
							<label>Product Description</label>
							<textarea class="form-control" name="description" rows="4"></textarea>
						</div>

						<div class="from-group">
              <label>Regular Price</label>
              <input type="text" name="r_price" class="form-control">
            </div>

            <div class="from-group">
              <label>Offer Price</label>
              <input type="text" name="o_price" class="form-control">
            </div>

            <div class="from-group">
              <label>Quantity</label>
              <input type="text" name="quantity" class="form-control">
            </div>

            <div class="from-group">
              <label>Product Status</label>
              <select name="status" class="form-control">
                <option>Please select product Status</option>
                <option value="1">Active</option>
                <option value="0">In-active</option>
              </select>
            </div>

            <div class="from-group">
              <label>Is Featured?</label>
              <select name="featured" class="form-control">
                <option>Please select Product Featured ( Yes / No )</option>
                <option value="1">Yes</option>
                <option value="0">No</option>
              </select>
            </div>

            <div class="from-group">
              <label>Select Brand</label>
              <select name="brand_id" class="form-control">
                <option>Please select Product Brand</option>
                @foreach ( App\Models\Backend\Brand::orderBy('name', 'asc')->get() as $brand )
                  <option value="{{ $brand->id }}">{{ $brand->name }}</option>
                @endforeach
              </select>
            </div>

            <div class="from-group">
              <label>Select Category</label>
              <select name="category_id" class="form-control">
                <option>Please select Product Category</option>
                @foreach ( App\Models\Backend\Category::orderBy('name', 'asc')->where('parent_id', 0)->get() as $parent )
                  <option value="{{ $parent->id }}">{{ $parent->name }}</option>
                  @foreach ( App\Models\Backend\Category::orderBy('name', 'asc')->where('parent_id', $parent->id )->get() as $child )
                    <option value="{{ $child->id }}"> - {{ $child->name }}</option>
                  @endforeach
                @endforeach
              </select>
            </div>

            <div class="form-group">
              <label>Product Main Image</label><br>
              <input type="file" name="p_image[]" class="form-control-file">
            </div>

            <div class="row">
              <div class="col-md-3">
                <div class="form-group">
                  <label>Thumbnail 01</label><br>
                  <input type="file" name="p_image[]" class="form-control-file">
                </div>
              </div>

              <div class="col-md-3">
                <div class="form-group">
                  <label>Thumbnail 02</label><br>
                  <input type="file" name="p_image[]" class="form-control-file">
                </div>
              </div>

              <div class="col-md-3">
                <div class="form-group">
                  <label>Thumbnail 03</label><br>
                  <input type="file" name="p_image[]" class="form-control-file">
                </div>
              </div>

              <div class="col-md-3">
                <div class="form-group">
                  <label>Thumbnail 04</label><br>
                  <input type="file" name="p_image[]" class="form-control-file">
                </div>
              </div>
            </div>

						<div class="from-group">
							<input type="submit" name="addProduct" value="Publish Product" class="btn btn-primary">
						</div>
					</form>
				<!--Create New Product Form End -->
              </div><!-- card -->
            </div><!-- col -->
          </div><!-- row -->

        </div><!-- br-section-wrapper -->
      </div>

@endsection