
@extends('userlayout')

@section('content')
<!-- Page content -->
<div class="container-fluid mt--6">
  <div class="content-wrapper">
    <div class="row">
        @foreach($gateways as $val)
            <div class="col-md-3">
                <div class="card">
                    <!-- Card body -->
                    <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h4 class="mb-1 text-dark">
                                <a href="#" data-toggle="modal" data-target="#modal-form{{$val->id}}">{{$val->name}}</a>
                            </h4>
                            <p class="text-sm text-dark mb-0">{{__('Charge')}}: {{$val->charge}}%</p>
                        </div>
                        <div class="col-auto">
                            <span class="btn-inner--icon"><a href="#" data-toggle="modal" data-target="#modal-form{{$val->id}}"><img src="{{url('/')}}/asset/payment_gateways/{{$val->gateimg}}" width="100" height="50"></a></span>
                        </div>
                    </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="modal-form{{$val->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-form" aria-hidden="true">
                <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-body p-0">
                    <div class="card border-0 mb-0">
                        <div class="card-header bg-transparent pb-5">
                        <div class="btn-wrapper text-center">
                            <a href="javascript:void;" class="btn btn-neutral btn-icon">
                            <span class="btn-inner--icon"><img src="{{url('/')}}/asset/payment_gateways/{{$val->gateimg}}"></span>
                            </a>
                        </div>
                        </div>
                        <div class="card-body px-lg-5 py-lg-5">
                        <form role="form" action="{{route('fund.submit')}}" method="post">
                        @csrf
                            <div class="form-group mb-3">
                            <div class="input-group input-group-alternative">
                                <div class="input-group-prepend">
                                <span class="input-group-text">{{$currency->symbol}}</span>
                                </div>
                                <input type="number" step="any" class="form-control" placeholder="" min="{{$val->minamo}}" max="{{$val->maxamo}}" name="amount" required>
                                <input type="hidden" name="gateway" value="{{$val->id}}">
                            </div>
                            </div>
                            <div class="text-center">
                            <button type="submit" class="btn btn-success btn-block my-4">{{__('Preview')}}</button>
                            </div>
                        </form>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </div>
        @endforeach
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                <div class="row align-items-center">
                    <div class="col">
                        <h4 class="mb-1 text-dark">
                            <a href="{{route('user.etherium_transfer')}}">{{__('Manual Etherium Deposit')}}</a>
                        </h4>
                        <p class="text-sm text-dark mb-0">{{__('Vendor')}}: {{$adminbank->eth_vendor}}</p>
                        <p class="text-sm text-dark mb-0">{{__('Wallet ID')}}: {{$adminbank->eth_id}}</p>
                    </div>
                    <div class="col-auto">
                      <span class="btn-inner--icon"><a href="{{route('user.manual_transfer')}}" ><img src="{{url('/')}}/asset/payment_gateways/eth.png" width="80" height="80"></a></span>
                  </div>

                </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
          <div class="card">
              <div class="card-body">
              <div class="row align-items-center">
                  <div class="col">
                      <h4 class="mb-1 text-dark">
                          <a href="{{route('user.manual_transfer')}}">{{__('Manual Bitcoin Deposit')}}</a>
                      </h4>
                      <p class="text-sm text-dark mb-0">{{__('Vendor')}}: {{$adminbank->vendor}}</p>
                      <p class="text-sm text-dark mb-0">{{__('Wallet ID')}}: {{$adminbank->wallet_id}}</p>
                  </div>
                  <div class="col-auto">
                    <span class="btn-inner--icon"><a href="{{route('user.manual_transfer')}}" ><img src="{{url('/')}}/asset/payment_gateways/btc.png" width="80" height="80"></a></span>
                </div>

              </div>
              </div>
          </div>
      </div>
        @if($adminbank->status==1)
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h4 class="mb-1 text-dark">
                                <a href="{{route('user.bank_transfer')}}">{{__('Bank Transfer')}}</a>
                            </h4>
                            {{-- <p class="text-sm text-dark mb-0">{{__('Swift code')}}: {{$adminbank->swift}}</p> --}}
                            <p class="text-sm text-dark mb-0">{{__('Account number')}}: {{$adminbank->acct_no}}</p>
                        </div>
                        <div class="col-auto">
                            <span class="btn-inner--icon"><a href="{{route('user.bank_transfer')}}" ><img src="{{url('/')}}/asset/payment_gateways/bank.png" width="120" height="80"></a></span>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
    <div class="card">
      <div class="card-header header-elements-inline">
        <h3 class="mb-0">{{__('Deposit logs')}}</h3>
      </div>
      <div class="table-responsive py-4">
        <table class="table table-flush" id="datatable-basic">
          <thead class="">
            <tr>
              <th>{{__('S / N')}}</th>
              <th>{{__('Reference ID')}}</th>
              <th>{{__('Amount')}}</th>
              <th>{{__('Method')}}</th>
              <th>{{__('Status')}}</th>
              <th>{{__('Charge')}}</th>
              <th>{{__('Created')}}</th>
              <th>{{__('Updated')}}</th>
            </tr>
          </thead>
          <tbody>
            @foreach($deposits as $k=>$val)
              <tr>
                <td>{{++$k}}.</td>
                <td>#{{$val->trx}}</td>
                <td>{{$currency->symbol.number_format($val->amount)}}</td>
                <td>{{$val->gateway->name}}</td>
                <td>
                @if($val->status==1)
                {{__('Approved')}}
                @elseif($val->status==0)
                {{__('Pending')}}
                @elseif($val->status==2)
                {{__('Declined')}}
                @endif
                </td>
                <td>{{$currency->symbol.number_format($val->charge)}}</td>
                <td>{{date("Y/m/d h:i:A", strtotime($val->created_at))}}</td>
                <td>{{date("Y/m/d h:i:A", strtotime($val->updated_at))}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
    @if($adminbank->status==1)
    <div class="card">
      <div class="card-header header-elements-inline">
        <h3 class="mb-0">{{__('Bank transfer logs')}}</h3>
      </div>
      <div class="table-responsive py-4">
        <table class="table table-flush" id="datatable-basic2">
          <thead class="">
              <tr>
                <th>{{__('S / N')}}</th>
                <th>{{__('Reference ID')}}</th>
                <th>{{__('Amount')}}</th>
                <th>{{__('Status')}}</th>
                <th>{{__('Created')}}</th>
                <th>{{__('Updated')}}</th>
              </tr>
            </thead>
            <tbody>
            @foreach($bank_transfer as $k=>$val)
              <tr>
                <td>{{++$k}}.</td>
                <td>#{{$val->trx}}</td>
                <td>{{$currency->symbol.number_format($val->amount)}}</td>
                <td>
                  @if($val->status==1)
                  {{__('Approved')}}
                  @elseif($val->status==0)
                  {{__('Pending   ')}}
                  @elseif($val->status==2)
                  {{__('Declined')}}
                  @endif
                </td>
                <td>{{date("Y/m/d h:i:A", strtotime($val->created_at))}}</td>
                <td>{{date("Y/m/d h:i:A", strtotime($val->updated_at))}}</td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
    @endif

@stop
