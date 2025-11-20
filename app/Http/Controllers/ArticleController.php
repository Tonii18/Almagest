<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Family;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $articles = Article::where('deleted', 0)->with('family')->get();
        return view('admin.articles.dashboard', compact('articles'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.articles.article-add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price_min' => 'required',
            'price_max' => 'required',
            'color_name' => 'required',
            'weight' => 'required',
            'size' => 'required',
            'family_id' => 'required|exists:families,id'
        ]);

        Article::create($request->all());

        return redirect()->route('admin.article.dashboard');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $article = Article::with('family')->findOrFail($id);
        $family = Family::all();
        return view('admin.articles.article-edit', compact('article', 'family'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $article = Article::findOrFail($id);

        $article->update([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'price_min' => $request->input('price_min'),
            'price_max' => $request->input('price_max'),
            'color_name' => $request->input('color_name'),
            'weight' => $request->input('weight'),
            'size' => $request->input('size'),
            'family_id' => $request->input('family_id'),
        ]);

        return redirect()->route('admin.article.dashboard');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $article = Article::findOrFail($id);
        $article->delete = 1;
        $article->save();
        return redirect()->back();
    }
}
