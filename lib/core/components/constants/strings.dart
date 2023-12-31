const String emailReg =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

const regionList = [
  "Ashanti Region",
  "Central Region",
  "Eastern Region",
  "Greater Accra Region",
  "Northern Region",
  "Upper East Region",
  "Upper West Region",
  "Volta Region",
  "Western Region",
  "Western North Region",
  "Oti Region",
  "North East Region",
  "Savannah Region",
  "Bono Region",
  "Ahafo Region",
  "Bono East Region"
];

const List<String> bloodGroupList = [
  "A+",
  "A-",
  "B+",
  "B-",
  "O+",
  "O-",
  "AB+",
  "AB-"
];

const List<String> genotypeList = [
  "AA",
  "AS",
  "SS",
  "AC",
  "SC",
  "CC",
  "AC",
  "CA"
];

const List<String> medicalHistory = [
  "Diabetes",
  "Hypertension",
  "Asthma",
  "Cancer",
  "HIV/AIDS",
  "Sickle Cell",
  "Covid 19",
];

List<String> quotes = [
  "“In A World Full Of O Positive Be My Ab Negative. Rare And Important.”",
  "“My Blood Type Is The Only Reason Why My Friends Remember Me. By The Way, My Blood Type Is O Negative.”",
  "“I Am A Universal Donor, And I Am Proud Of It.”",
  "“Funny How My Friends Only Call Me When They Need A Blood Donor. By The Way, My Blood Type Is O Negative.”",
  "“My Blood Type Is O Negative, And I Donate My Blood So That I Can Flex As A Universal Donor.”",
  "“There Is Nothing More Cool Than Having A Blood Type That Is Known As A Universal Donor.”",
  "“The Only Interesting Thing About Me Is My Blood Type.”",
  "“Don’t Lose Me Because I Am As Rare As The Blood Type Ab Negative.”",
  "“Be Like Blood Type Ab Negative, Rare, And Worthy.”",
  "“I Am An Antigen, And She Is An Antibody. We Just Can’t Get Together.”",
  "“I Dumped My Ex Because He Was Like The Blood Type Ab+; He Accepted Every Proposal That Was Offered To Him.”",
  "If you are Home Sick or Missing your Home than these quotes are for you: Missing Home Quotes",
  "“The Only Great Thing I Have Done In My Life Is Donating Blood.”",
  "“How Can I Be Positive, Even My Blood Type Is Negative.”",
  "“The Only Positive Thing About Me Is My Blood Type.”",
  "“I Donate Blood Just So That I Can Get A Cookie.”",
  "“A Cookie Lover’s Favorite Hobby Is To Donate Blood.”",
  "“No One’s My Type Because My Blood Type Is Ab Negative.”",
  "“No One Has Ever Suffered Blood Loss By Only Donating A Bag Of Blood.”",
  "“I Wish There Was A Way To Donate Fat Just Like You Can Donate Blood.”",
  "“I Would Have Donated Some Brain Cells To My Best Friend If There Was A Way To Donate Brain Cells Just Like Donating Blood.”",
  "“There Is Always Something To Offer If You Are Willing To Donate.”",
  "“Live An Effective Life, Not A Long Life.”",
  "“People Who Donate Blood Are The Reason For A Smile On A Mother’s Face Who Needs Blood To Save Her Son’s Life.”",
  "“Trust Me When I Say That People Who Give And Donate Are Happier Than People Who Receive.”",
  "“There Is No Better Way To Make Your Heart Happy Other Than Helping People And Reaching Out To People Who Desperately Need You.”",
  "“There Is Only A Difference Of One Bag Of Blood Between Life And Death.”",
  "“Saving Lives Sounds Like A Difficult Task, But All You Have To Do Is Donate Blood.”",
  "“Isn’t It Amazing That You Can Save A Life Just By A Simple Act Of Donating Blood?”",
  "“You Deserve To Be Appreciated And Loved If You Are A Blood Donor. You Are An Unsung Hero Of The Nation.”",
  "“The Best And Easiest Act Of Generosity That You Can Ever Do Is Donate Blood.”",
  "“The Best Way To Show Your Bravery Is By Donating Blood And Helping The Poor.”",
  "“Great Power Does Not Come By Oppressing Others.”",
  "“Great Power Comes By Encouraging And Uplifting Others.”",
  "“Brave Is The One Who Risks His Own Life To Save Others.”",
  "“Be The One To Save A Life Today By Donating Blood. God Knows You Might Be The Next One To Need It.”",
  "“If You Were Aware Of The Health Benefits Of Blood Donation, You Would Donate Blood Religiously.”",
  "“Only Cowards And Misers Are Afraid Of Donating Blood.”",
  "“People Who Help Others Without Expecting Anything In Return Are The Best Type Of People.”",
  "“Help People Without Any Self-benefit. God Will Surely Bestow His Endless Blessings Upon You If You Do So.”",
  "“God Loves Those Who Serve His Creation And People., So Donate Blood To Serve His Creation And People.”",
  "“You Might Not Get Money In Return If You Donate Blood, But You Will Surely Get Greater Blessings From God Like A Peace Of Mind And Heart.”",
  "“No External Force Can Stop You From Donating Blood.”",
  "“If A Man Is Willing To Donate Blood With All His Heart, The Myths And Rumors Can’t Stop Him.”",
  "“Don’t Let The Myths Affect You And Stop You From Donating Blood.”",
  "It Is Extremely Important To Spread Awareness About A Topic That Isn’t Given A Lot Of Attention Because Ignorance Will Lead To Endless Deaths. Why Stop Yourself From Helping When You Can Easily Help? The Major Reason For Lesser Blood Donors Is The Lack Of Awareness. Here Are Some Quotes To Spread Awareness About Blood Donation.",
  "“Ignorance Has Caused More Deaths Than Anything In This World.”",
  "“Millions Of People Die Because Of Lack Of Blood.”",
  "“Donate Blood Because You Can Be The Next One To Need It.”",
  "“You Do Yourself And Your Health A Great Favor When You Donate Blood.”",
  "“Donate Blood To Prevent Yourself From Diseases Like Hemochromatosis.”",
  "“Donating Blood Does Not Only Prevent Cardiovascular Diseases But Also Helps In Achieving Peace And Satisfaction Of The Heart.”",
  "“What Better Than Curing Cancer? The Answer Is Preventing. Blood Donation Reduces The Risk Of Cancer.”",
  "“You Can’t Donate Fat Like You Can Donate Blood, But You Can Surely Burn Calories By Donating Blood According To A Research Of The University Of California.”",
  "“You Can’t Donate Stress By Giving It Away, But You Can Lower Your Stress And Other People’s Stress By Donating Blood According To Research.”",
  "“Keep Your Liver Healthy And Working By Donating Blood!”",
  "“Donating Blood Is A Win-win Situation Because You Donate Blood, And The Person In Need Gets To Live His Life Healthily. You Donate Blood And Get Health Benefits Like Lower Chances Of Cancer And Cardiovascular Disease.”",
  "“A Cookie Is Surely The Best Present For A Blood Donor.”",
  "“Donating Blood Is A Thing To Be Proud Of Because You Did Something That Can Save The Lives Of 3 People.”",
  "“ Donate Blood To Avoid Clotting Of Blood Because Donating Blood Makes Your Blood Less Viscous.”",
  "“Motivate Your Friends And Family To Donate Blood If You Are A Blood Donor.”",
  "“It Is Our Duty To Make People Aware Of The Health Benefits That Come With Donating Blood.”",
  "“Donating Blood Causes More Benefits Than Harm.”",
  "“Fulfill Your Duty Of A Citizen And Spread Awareness About The Benefits Of Donating Blood.”",
  "“Donate Blood Because There Is Nothing To Lose For A Donor, But At The Other End, The One In Need Is At The Risk Of Losing His Life.”",
  "“If Not For The Patient, At Least Donate Blood For The Mother Who Can’t Suffer The Pain Of Losing Her Son.”",
  "“Donating Blood Is Like Paying Rent For Living In Other’s Life(The Ones You Have Helped)”",
  "“Donating To People In Your Life Matters More Than The Duration Of Your Life.”",
  "“You And Your Blood Are Like The Small Cause That Can Lead To Great And Big Causes.”",
  "“If You Ever Want To Help Someone Dearly Without Putting In A Great Effort, Just Donate Blood.”",
  "“Blood Is Required By Many Patients When They Are Undergoing Any Circumstances That Result In Blood Loss. So Donate Blood Because Someone Might Need It In The Next Moment. That Someone Can Be You, A Relative, Or A Friend.”",
  "“The Best Way To Save Someone’s Life Is By Donating Blood.”",
  "“By Donating Blood, You Do Not Only Save A Life, But Your Importance Near God Increases, And You Grow Closer To Him.”",
  "“Donate Blood Whenever You Can If You Want Millions Of Needy People And Mothers Praying For You!”",
  "“As A Health Professional, I Can Confirm That There Are No Side Effects Of Donating Blood. In Fact, It Has Positive Effects Rather Than Negative Effects.”",
  "“As A Health Professional, I Recommend Everyone To Donate Blood And Encourage Others To Do So Too.”",
  "“If You Are A Blood Donor, That Is Great. But If You Are A Blood Donor Who Also Encourages Other People To Donate Blood, You Are The Best!”",
  "“As A Health Professional, I Think That It Is Our Duty To Spread Awareness About Blood Donation And Its Benefits.”",
  "“Blood Donation Helps Reduce The Viscosity Of Your Blood, Which Results In Lesser Chances Of Blood Clotting.”",
  "“Fresh Out Of The Blood Donation Center.”",
  "“After Donating Blood, I Can Say That My Blood Does Not Only Run Through My Veins; It Runs Through The Veins Of Others Too.”",
  "“I Am Not On Instagram To Flex On Donating Blood, But Here Is A Picture Of Me Donating Blood.”",
  "“You Can Either Pass Out By Being Overdosed On Drugs, Or You Can Pass Out By Donating Too Much Blood; I Will Choose The Second Option.”",
  "“People On Instagram Will Hold Up Boards With Slogans Like Donate Blood But Will Not Donate Blood Themselves Because They Are Scared.”",
  "“There Is An Act Known As A Life-saving Act, And That Act Is Blood Donation.”",
  "“Perform A Practical Life-saving Act By Donating Blood.”",
  "“Eating A Cookie After Donating Blood Surely Does Taste Great!”",
  "“Don’t Donate Blood So That You Can Post It On Instagram For Likes And Attention. Donate Blood Because You Want To Save Lives.”",
  "“Couples That Donate Blood Together Stay Together.”",
  "“I Celebrate The Blood Donor Day After Every Three Months By Donating Blood.”",
  "“My Kind Of Celebration Is Helping The People Around You. The Help May Be In The Form Of Blood, Money, Or Food.”",
  "“Blood Is The Right Of A Needy Patient And Is The Duty Of A Healthy Adult To Fulfill.”",
  "“Once People Start Considering Blood Donation As Their Duty, There Would Be No Lack Of Blood For The Patients In The Hospital.”",
];
