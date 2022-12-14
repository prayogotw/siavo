<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Telegram;


class UserController extends Controller
{
    public function update(Request $request, $id)
    {
        $input = $request->all();
        $user = User::find($id);
        $user->fill($input)->save();
        toastr()->success('Profil berhasil diupdate!');
        Telegram::sendMessage([
            'chat_id'=>env('TELEGRAM_CHAT_ID', '-866806130'),
            'parse_mode'=>'HTML',
            'text'=>'<b>'.auth()->user()->name."</b>"." Admin baru saja membuat kategori "."<b>".$request->title."</b>"
        ]);
        return back();
    }
}
