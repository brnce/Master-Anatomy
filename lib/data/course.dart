class Course {
  final String imageUrl;
  final String courseUrl;
  final String title;
  final String authorUrl;
  final String tutor;
  final String time;
  final String topic1;
  final String topic2;
  final String topic3;
  final String topic4;
  final String para1;
  final String para2;
  final String para3;
  final String para4;
  final String notesUrl;

  Course(
      {required this.imageUrl,
      required this.courseUrl,
      required this.title,
      required this.authorUrl,
      required this.tutor,
      required this.time,
      required this.topic1,
      required this.topic2,
      required this.topic3,
      required this.topic4,
      required this.para1,
      required this.para2,
      required this.para3,
      required this.para4,
      required this.notesUrl});
}

List<Course> courses = [
  Course(
      imageUrl: 'assets/images/digest.jpg',
      courseUrl: 'assets/images/digest2.JPG',
      title: 'The Digestive System',
      authorUrl: 'assets/images/soren_huerta.png',
      tutor: 'Soren Huerta',
      time: '10-20 mins',
      topic1: 'Functions of the Digestive System',
      topic2: 'The Small Intestine',
      topic3: 'The Large Intestine',
      topic4: 'Conditions and Disorders that affect the Digestive System',
      para1:
          '''The digestive system consists of the gastrointestinal tract, liver, pancreas, and gallbladder. From your mouth to your anus, the GI tract is composed of hollow organs connected to each other. In order from mouth to small intestine to large intestine, the organs that form your GI tract are the mouth, esophagus, stomach, small intestine, and large intestine.

Digestion is important to breakdown food into nutrients that the body needs to produce energy, grow, and repair cells. In digestion, food is moved through the gastrointestinal tract (GI). The digestion process begins in the mouth with chewing and ends in the small intestine. Food molecules break down into smaller molecules as they pass through the GI tract when they mix with digestive juices.

Solid stool is produced as a result of digestion waste products passing through the large intestine. Food is broken down into nutrients by enzymes in digestive juices. During digestion, most food molecules are absorbed into the small intestine, along with water and minerals, and then are transported into other organs for storage or further chemical transformation. Most importantly, Regulators of hormones and nerves control digestion.

The diagram shows the main parts of the digestive system including the areas most likely to be affected by diseases such as Crohn's disease or Ulcerative Colitis.''',
      para2: 
        '''As part of your digestive system, the small intestine plays an important role. Small intestines run from the stomach to the beginning of the large intestine, and they are hollow tubes approximately 20 feet long. Most nutrients from food are absorbed by the small intestine, which breaks down food from the stomach. The small intestine has three parts: Duodenum, Jejunum and Ileum.

Duodenum
Located at the beginning of the small intestine is the duodenum. First phase digestion is completed by the duodenum. The stomach's food is combined with pancreatic enzymes and gallbladder bile. Food is broken down with the help of enzymes and bile.

Jejunum
When food is digested in the duodenum, it moves into the jejunum, where its nutrients are absorbed. In the jejunum, the inner walls are folded in many circular patterns, which increase the surface area so that all the nutrients needed by the body is absorbed.

Ileum
In addition to absorbing bile acids, it also supplies the body with vitamin B12.

Following processing in the small intestine, food enters the large intestine (also known as the large bowel or colon). Most of the water in food is absorbed by the large intestine, which is about five feet long; the rest passes through the colon and out of the body as feces.''',
      para3: 
      '''The large intestine is primarily responsible for absorbing water. This is the natural habitat of a large and diverse population of bacteria (the stomach and small intestine contain few species of bacteria, most likely as a result of acids, bile and pancreatic secretions that kill most microbes). Pathogen invasions are highly prevented in the natural habitat. Vitamin K is synthesized as well as calcium, magnesium, and iron are absorbed through this enzyme. Additionally, it helps maintain electrolyte balance by absorbing potassium and sodium.''',
      para4: 
      '''- Irritable Bowel Syndrome (IBS) 
- Inflammatory Bowel Disorders (IBD)
  - Crohn’s Disease 
  - Ulcerative Colitis
- Diverticular Disease 
- Bowel obstruction and Neoplasms
- Cancer''',
      notesUrl: 'assets/images/digestive_system.png'
      ),

  Course(
    imageUrl: 'assets/images/immune.jpg',
    courseUrl: 'assets/images/immune2.JPG',
    title: 'The Immune System',
    authorUrl: 'assets/images/rosemary_patriarco.png',
    tutor: 'Rosemary Patriarco',
    time: '20-30 mins',
    topic1: 'Functions of the Immune System',
    topic2: 'White blood cells (Leukocytes)',
    topic3: 'The Lymphatic System',
    topic4: 'Conditions and Disorders that affect the Immune System',
    para1: 
    '''The immune system's primary function is to protect the body from infection. Immune system is not limited to one area or region of the body like urinary system, cardiac system, or reproductive system. 

The immune system is divided into two major parts and mechanisms: innate immune system and acquired immune system. A natural or normally occurring process is described as innate, while an acquired process is defined as something that occurs for reasons other than those that are naturally occurring. A nonspecific response is part of the innate immune system, and a specific response is part of the acquired immune system. 

In the case of the skin, it acts as a nonspecific response of the innate immune system since it is the first line of defense against infections as we discussed in the section on the integumentary system before. In contrast, acquired immune responses are the result of an immune response to an antigen. The activation of T helper cells is an example of an acquired immune system.

It takes several factors to cause infection. It is often called the Chain of Infection. The diagram below shows the six links in the chain of infection''',
    para2: 
    '''Your body is protected against infection by white blood cells. The white blood cells in your body locate the site of infection as they travel through the bloodstream and tissues and act as an army general, alerting other white blood cells to the infection to help defend your body from an unknown infection. By producing antibody proteins, your white blood cells attach to the invader and destroy it once they arrive.
    
There are five types of white blood cells: 

- Neutrophils: kill bacteria, fungi, and foreign debris in the body, protecting it from infections.

- Lymphocytes: These cells produce protein to fight infection and protect against viral infections (antibodies).

- Eosinophil: defends your body from parasites, cancer cells, and assists the basophil in responding to allergies.

- Basophils: cause allergic reactions such as coughing, sneezing, and runny noses.

- Monocytes: Defend against infection by cleaning up damaged cells.''',
    para3: 
    '''The lymphatic system is a system of thin tubes and lymph nodes that run throughout the body. These tubes are called lymph vessels or lymphatic vessels. The lymph system is an important part of our immune system. It plays a role in:

- Fighting bacteria and other infections.
- Destroying old or abnormal cells, such as cancer cells. 

As with the blood circulation, the lymphatic system works similarly. Like arteries and veins that carry blood, lymph vessels branch throughout the body. A colourless liquid called lymph is transported by the lymphatic system tubes, which are much finer.

A type of white blood cell called lymphocytes is found in high concentrations in the lymph. They fight infections and destroy abnormal or damaged cells. In the process of blood circulation around the body, fluid escapes from blood vessels and enters the body tissues. A tissue fluid is formed as a result of this fluid transporting food to the cells and bathing the body tissues.

As a result, waste products, bacteria, and damaged cells are collected in the fluid. If cancer cells are present, it also collects them. It is then drained into lymph vessels. Following that, lymph flows into the lymph vessels, where they are filtered by the lymph glands, which identify bacteria and damaged cells and remove them.

After moving through the lymph glands, the lymph joins up with larger vessels known as lymphatic vessels. As they travel along the thoracic duct, they eventually reach a very large lymph vessel in the neck. Afterwards, the lymph is emptied back into the blood circulation through the thoracic duct.''',
    para4: 
    '''- Severe combined immunodeficiency (SCID) 
- AIDS. HIV, which causes AIDS, is an acquired viral infection that destroys important white blood cells and weakens the immune system. 
- Asthma
- Allergic rhinitis
- Rheumatoid arthritis
- Type 1 Diabetes
- Lupus''',
    notesUrl: 'assets/images/infection.jpg',
  ),
  Course(
    imageUrl: 'assets/images/urine.jpg',
    courseUrl: 'assets/images/urine2.JPG',
    title: 'The Urinary System',
    authorUrl: 'assets/images/jawara_jela.png',
    tutor: 'Jawara Jela',
    time: '1-2 hrs',
    topic1: 'Functions of the Urinary System',
    topic2: 'Physiology of the Kidney',
    topic3: 'The Urinary Bladder',
    topic4: 'Conditions and Disorders that affect the Urinary System',
    para1: 
    '''Blood is filtered by the urinary system and urine is produced as a waste product. The urinary system is composed of the kidneys, renal pelvis, ureters, bladder, and urethra.
    
Energy is generated by the body by converting nutrients from food. The body leaves behind waste products in the bowel and blood after it consumes food components.

The picture below represents the urinary system.

1. Human urinary system: 2. Kidney, 3. Renal pelvis, 4. Ureter, 5. Urinary bladder, 6. Urethra

Left side with frontal section 
7. Adrenal gland

Vessels
8. Renal artery, 9. Inferior vena cava, 10. Abdominal aorta, 11. Common iliac artery and vein

Transparent
12. Liver, 13. Large intestine, 14. Pelvis''',
    para2: 
    '''Your kidneys are made up of millions of filtering units called nephrons. Each nephron includes a filter, called the glomerulus, and a tubule. Nephrons filter and remove waste from your blood through two steps: the glomerulus filters your blood, and the tubule returns necessary substances.

A cluster of blood vessels called the glomerulus receives blood as it flows into each nephron. Water and smaller molecules can be passed through the tubules because the walls of the glomerulus are thin. The blood vessel remains filled with larger molecules, such as proteins and blood cells.

Your body absorbs almost all of the water, minerals, and nutrients it needs as the filtered fluid moves through the tubules. Excess acid is removed from the blood by the tubule. Urine is formed from the remaining fluid and wastes in the tubule.

The renal artery transports blood to the kidney. Eventually, the blood reaches the nephrons by branching off this large blood vessel. During kidney function, the blood is filtered by the tiny blood vessels of the glomeruli and flows out of the renal vein. ''',
    para3: 
    '''Located just above and behind the pubic bone, the urinary bladder is a muscular sac. Upon emptying, the bladder appears like a pear shaped object. The kidneys produce urine, which travels down two tubes known as ureters to the bladder. During urine retention, layers of muscle tissue stretch along the bladder's walls.

In general, the bladder has a capacity of 400-600 mL. When you urinate, there is a contraction of the bladder muscles, which opens two sphincters (valves) to let the urine out. A urethra is responsible for carrying urine out of the body after urine exits the bladder.

A man's urethra is 8 inches longer than a woman's (1.5 inches) since it passes through the penis.''',
    para4: '''- Bladder cancer
- Urinary incontinence
- Hematuria
- Kidney stones
- Urinary tract infections (UTI's)
- Kidney Failure''',
    notesUrl: 'assets/images/kidney.png',
  ),
];
