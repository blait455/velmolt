<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{{$gnl->title}}</title>
</head>

<body>
<form method='POST' action='http://localhost/xx/ext_transfer' id="payment_form">
    <input type='hidden' name='merchant_key' value='3S1XUuTO5yp7fjeV' />
    <input type='hidden' name='public_key' value='PUB-boJXLxpvdv5jvF8E5ptfb4FSRp6uxbAL' />
    <input type='hidden' name='callback_url' value="{{route('ipn.boompay')}}" />
    <input type='hidden' name='tx_ref' value="{{ $boompay['track'] }}" />
    <input type='hidden' name='amount' value="{{$boompay['amount']}}" />
    <input type="hidden" name="email" value="user@test.com" />
    <input type="hidden" name="first_name" value="Finn" />
    <input type="hidden" name="last_name" value="Marshal" />
    <input type="hidden" name="title" value="Tesla Model S" />
    <input type="hidden" name="description" value="lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book." />
    <input type="hidden" name="quantity" value="10" />
    <input type="hidden" name="currency" value="USD" />
    <input type='submit' value='submit' />
</form>

</body>

</html>

