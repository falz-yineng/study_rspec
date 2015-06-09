require "spec_helper"
require "user"

describe User do
	let(:user) { User.new(name: 'たろう', age: age) }

	describe '#greet' do
		subject { user.greet }

		shared_examples '子どもの挨拶' do
			it { is_expected.to eq 'ボクは たろう だよ。' }
		end
		shared_examples '大人の挨拶' do
			it { is_expected.to eq '僕は たろう です。' }
		end

		context '0歳の場合' do
			let(:age) { 0 }
			it_behaves_like '子どもの挨拶'
		end
		context '12歳以下の場合' do
			let(:age) { 12 }
			it_behaves_like '子どもの挨拶'
		end
		context '13歳以上の場合' do
			let(:age) { 13 }
			it_behaves_like '大人の挨拶'
		end
		context '100歳の場合' do
			let(:age) { 100 }
			it_behaves_like '大人の挨拶'
		end
	end

	describe '#child?' do
		subject { user.child? }

		shared_examples '子どもの年齢' do
			it { is_expected.to eq true }
		end
		shared_examples '大人の年齢' do
			it { is_expected.to eq false }
		end

		context '12歳以下の場合' do
			let(:age) { 12 }
			it_behaves_like '子どもの年齢'
		end
		context '13歳以上の場合' do
			let(:age) { 13 }
			it_behaves_like '大人の年齢'
		end
	end

end