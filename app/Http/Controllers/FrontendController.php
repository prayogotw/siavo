<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Forum;
use App\Models\Discussion;
use App\Models\User;
use Telegram;

class FrontendController extends Controller
{
    //
    public function index()
    {
        $user = new User;
        $users_online = $user->allOnline();
        $forumsCount = count(Forum::all());
        $topicsCount = count(Discussion::all());
        $totalMembers = count(User::all());
        $newest = User::latest()->first();
        $totalCategories = count(Category::all());
        $categories = Category::latest()->get();
        // dd($categories);
        $few_users = User::latest()->take(5)->get();
        return view('welcome', \compact('categories', 'forumsCount', 'topicsCount', 'newest', 'totalMembers', 'totalCategories', 'users_online', 'few_users'));
    }

    public function categoryOverview($id)
    {
        $user = new User;
        $users_online =  $user->allOnline();
        $forumsCount = count(Forum::all());
        $topicsCount = count(Discussion::all());
        $totalMembers = count(User::all());
        $newest = User::latest()->first();
        $totalCategories = count(Category::all());
        $category = Category::find($id);

        return view('klien.category-overview', \compact('category', 'forumsCount', 'topicsCount', 'newest', 'totalMembers', 'totalCategories', 'users_online'));
    }

    public function forumOverview($id)
    {
        $forum = Forum::find($id);
        return view('klien.forum-overview', \compact('forum'));
    }

    public function profile($id)
    {
        $latest_user_post = Discussion::where('user_id', $id)->latest()->first();
        $latest = Discussion::latest()->first();
        $user = User::find($id);
        return view('klien.user_profile', \compact('user', 'latest', 'latest_user_post'));
    }
    public function users()
    {
        $users = User::latest()->paginate(10);
        return view('klien.users', \compact('users'));
    }

    public function photoUpdate(Request $request, $id)
    {
        if (!$request->profile_image) {
            toastr()->error('Please select Image!');
            return back();
        }

        $image = $request->profile_image;
        $name = $image->getClientOriginalName();
        $new_image = time().$name;
        $dir = 'storage/profile/';
        $image->move($dir, $new_image);

        $user = User::find($id);
        $user->image = $new_image;
        $user->save();
        toastr()->success('Foto profil berhasil diupdate!');
        Telegram::sendMessage([
            'chat_id'=>env('TELEGRAM_CHAT_ID', '-866806130'),
            'parse_mode'=>'HTML',
            'text'=>'<b>'.auth()->user()->name."</b>"." berhasil mengubah foto profil "."<b>".$request->title."</b>"
        ]);
        return back();
    }


}
