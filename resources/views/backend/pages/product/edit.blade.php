@extends ('backend.template.layout')

@section('dashboard-content')
<div class="br-mainpanel">
  <div class="br-pagetitle">
    <i class="icon ion-ios-home-outline"></i>
    <div>
      <h4>Edit Product</h4>
      <p class="mg-b-0">Edit or update an existing product</p>
    </div>
  </div>

  <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="br-section-label">Edit a Product</h6>
          <p class="br-section-text">Edit a Product here.</p>

          <div class="row mg-b-20">
            <div class="col-md">
              <div class="card card-body">
                <!--Create New Product Form Start -->
					<form action="{{ route('updateProduct', $product->id) }}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="from-group">
							<label>Product Title</label>
							<input type="text" name="title" class="form-control"
							value="{{ $product->title }}">
						</div>

						<div class="from-group mb-2">
							<label>Product Description</label>
							<textarea class="form-control" name="description" rows="3">{{ $product->description }}</textarea>
						</div>

						<div class="from-group">
			              <label>Regular Price</label>
			              <input type="text" name="r_price" class="form-control" value="{{ $product->regular_price }}">
			            </div>

			            <div class="from-group">
			              <label>Offer Price</label>
			              <input type="text" name="o_price" class="form-control" value="{{ $product->offer_price }}">
			            </div>

			            <div class="from-group">
			              <label>Quantity</label>
			              <input type="text" name="quantity" class="form-control" value="{{ $product->quantity }}">
			            </div>

			            <div class="from-group">
			              <label>Product Status</label>
			              <select name="status" class="form-control">
			                <option>Please select product Status</option>
			                <option value="1" @if($product->status == 1) selected @endif >Active</option>
			                <option value="0" @if($product->status == 0) selected @endif >In-active</option>
			              </select>
			            </div>

			            <div class="from-group">
			              <label>Is Featured?</label>
			              <select name="featured" class="form-control">
			                <option>Please select Product Featured ( Yes / No )</option>
			                <option value="1" @if($product->is_featured == 1) selected @endif >Yes</option>
			                <option value="0" @if($product->is_featured == 0) selected @endif >No</option>
			              </select>
			            </div>

			            <div class="from-group">
			              <label>Selected Brand</label>
			              <select name="brand_id" class="form-control">
			                <option>Please select Product Brand</option>
			                @foreach ( App\Models\Backend\Brand::orderBy('name', 'asc')->get() as $brand )
			                  <option value="{{ $brand->id }}" @if($product->brand_id == $brand->id) selected @endif >{{ $brand->name }}</option>
			                @endforeach
			              </select>
			            </div>

			            <div class="from-group">
			              <label>Selected Category</label>
			              <select name="category_id" class="form-control">
			                <option>Please select Product Category</option>
			                @foreach ( App\Models\Backend\Category::orderBy('name', 'asc')->where('parent_id', 0)->get() as $parent )
			                  <option value="{{ $parent->id }}" @if($product->category_id == $parent->id) selected @endif>{{ $parent->name }}</option>
			                  @foreach ( App\Models\Backend\Category::orderBy('name', 'asc')->where('parent_id', $parent->id )->get() as $child )
			                    <option value="{{ $child->id }}" @if($product->category_id == $child->id) selected @endif> - {{ $child->name }}</option>
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
							<input type="submit" name="addProduct" value="Update Product" class="btn btn-primary">
						</div>
					</form>
				<!--Create New Product Form End -->
              </div><!-- card -->
            </div><!-- col -->
          </div><!-- row -->

        </div><!-- br-section-wrapper -->
      </div>

@endsection